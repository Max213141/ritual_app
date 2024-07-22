import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ritual_app/blocs/media_bloc/media_bloc.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/service_locator.dart';

class MediaTabWidget extends StatefulWidget {
  final MemoryPage profileData;

  const MediaTabWidget({
    super.key,
    required this.profileData,
  });

  @override
  State<MediaTabWidget> createState() => _MediaTabWidgetState();
}

class _MediaTabWidgetState extends State<MediaTabWidget>
    with AutomaticKeepAliveClientMixin<MediaTabWidget> {
  late MediaServiceInterface mediaServiceInterface;
  final StreamController<double> _progressController =
      StreamController<double>();
  final ImagePicker _picker = ImagePicker();

  late BuildContext _context;

  bool isVideo = false;
  dynamic pickImageError;

  @override
  void initState() {
    mediaServiceInterface = getIt<MediaServiceInterface>();
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;
  Future<int> getFileSize(XFile file) async {
    final fileInfo = File(file.path);
    return await fileInfo.length();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _context = context; // Save the context reference
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('Фото'),
          const SizedBox(height: 8),
          MediaPickerButton(
            icon: Icons.camera_alt_outlined,
            onPressed: () => _onImageButtonPressed(
              ImageSource.gallery,
              isMulti: true,
              isMedia: false,
            ),
          ),
          const SizedBox(height: 16),
          const Text('Видео'),
          const SizedBox(height: 8),
          MediaPickerButton(
            icon: Icons.video_call_outlined,
            onPressed: () => _onImageButtonPressed(
              ImageSource.gallery,
              isMulti: true,
              isMedia: true,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onImageButtonPressed(
    ImageSource source, {
    bool isMulti = false,
    bool isMedia = false,
  }) async {
    try {
      final List<XFile> compressedList = [];
      final List<XFile> pickedFileList = isMedia
          ? await _picker.pickMultipleMedia(
              // maxWidth: maxWidth,
              // maxHeight: maxHeight,
              // imageQuality: quality,
              limit: 4,
            )
          : await _picker.pickMultiImage(
              // maxWidth: maxWidth,
              // maxHeight: maxHeight,
              // imageQuality: quality,
              limit: 4,
            );

      if (pickedFileList.isNotEmpty) {
        for (var file in pickedFileList) {
          final compressedFile = await mediaServiceInterface.compressFile(file);
          compressedList.add(compressedFile);

          final fileName = isMedia
              ? 'media/${compressedFile.name}'
              : 'image/${compressedFile.name}';

          if (!mounted) return;

          BlocProvider.of<MediaBloc>(_context).add(
            UploadMedia(
              file: File(compressedFile.path),
              filePath: fileName,
              progressController:
                  _progressController, // Pass the progress controller
            ),
          );
        }

        if (!mounted) return;
        // setState(() {
        //   _mediaFileList = compressedList;
        // });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        pickImageError = e;
      });
    }
  }
}
