import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/service_locator.dart';
import 'package:ritual_app/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'home_screen');

typedef OnPickImageCallback = void Function(
  double? maxWidth,
  double? maxHeight,
  int? quality,
  int? limit,
);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.title});

  final String? title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<XFile>? _mediaFileList;
  final mediaServiceInterface = getIt<MediaServiceInterface>();
  // final StreamController<double> _progressController =
  //     StreamController<double>();
  final List<StreamController<double>> _progressControllers = [];
  final Map<int, double> _uploadProgressMap = {};
  late BuildContext _context;
  int _totalFiles = 0;

  dynamic _pickImageError;
  bool isVideo = false;

  final ImagePicker _picker = ImagePicker();

  Future<int> getFileSize(XFile file) async {
    final fileInfo = File(file.path);
    return await fileInfo.length();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _context = context; // Save the context reference
  }

  Future<void> _onImageButtonPressed(
    ImageSource source, {
    bool isMulti = false,
    bool isMedia = false,
  }) async {
    if (mounted) {
      await showDialog(
        context: _context,
        builder: (BuildContext context) {
          return ImagePickerDialog(
            isMulti: true,
            onPick: (
              double? maxWidth,
              double? maxHeight,
              int? quality,
              int? limit,
            ) async {
              try {
                final List<XFile> compressedList = [];
                final List<XFile> pickedFileList = isMedia
                    ? await _picker.pickMultipleMedia(
                        maxWidth: maxWidth,
                        maxHeight: maxHeight,
                        imageQuality: quality,
                        limit: limit,
                      )
                    : await _picker.pickMultiImage(
                        maxWidth: maxWidth,
                        maxHeight: maxHeight,
                        imageQuality: quality,
                        limit: limit,
                      );

                if (pickedFileList.isNotEmpty) {
                  _totalFiles = pickedFileList.length;
                  _progressControllers.clear();
                  for (var i = 0; i < pickedFileList.length; i++) {
                    final file = pickedFileList[i];
                    final compressedFile =
                        await mediaServiceInterface.compressFile(file);
                    compressedList.add(compressedFile);

                    final fileName = isMedia
                        ? 'media/${compressedFile.name}'
                        : 'image/${compressedFile.name}';

                    if (!mounted) return;

                    final progressController = StreamController<double>();
                    _progressControllers.add(progressController);
                    _uploadProgressMap[i] = 0.0;

                    BlocProvider.of<MediaBloc>(_context).add(
                      UploadMedia(
                        file: File(compressedFile.path),
                        filePath: fileName,
                        progressController:
                            progressController, // Pass the progress controller
                      ),
                    );

                    progressController.stream.listen((progress) {
                      setState(() {
                        _uploadProgressMap[i] = progress;
                      });

                      if (_areAllUploadsComplete()) {
                        WidgetsBinding.instance
                            .addPostFrameCallback((_) => _showSuccessDialog());
                      }
                    });
                  }

                  // setState(() {
                  //   _mediaFileList = compressedList;
                  // });
                }
              } catch (e) {
                if (!mounted) return;
                setState(() {
                  _pickImageError = e;
                });
              }
            },
          );
        },
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    for (var controller in _progressControllers) {
      controller.close();
    }
  }

  bool _areAllUploadsComplete() {
    return _uploadProgressMap.values.every((progress) => progress == 100);
  }

  void _showSuccessDialog() {
    showDialog(
      context: _context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success'),
          content: const Text('File uploaded successfully!'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Text'),
          ..._progressControllers.map((controller) {
            return StreamBuilder<double>(
              stream: controller.stream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data == 100 && _areAllUploadsComplete()) {
                    WidgetsBinding.instance!
                        .addPostFrameCallback((_) => _showSuccessDialog());
                  }
                  return Column(
                    children: [
                      LinearProgressIndicator(value: snapshot.data! / 100),
                      Text('${snapshot.data!.toStringAsFixed(2)}%')
                    ],
                  );
                } else {
                  return Container();
                }
              },
            );
          }).toList(),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          UploaderButton(
            onPressed: () {
              isVideo = false;
              _onImageButtonPressed(
                ImageSource.gallery,
                isMulti: true,
                isMedia: true,
              );
            },
            heroTag: 'MultiMedia',
            tooltip: 'Pick Multiple Media from gallery',
            icon: Icons.photo_library,
          ),
          UploaderButton(
            onPressed: () {
              isVideo = false;
              _onImageButtonPressed(
                ImageSource.gallery,
                isMulti: true,
              );
            },
            heroTag: 'MultiImage',
            tooltip: 'Pick Multiple Image from gallery',
            icon: Icons.photo_library,
          ),
        ],
      ),
    );
  }
}
