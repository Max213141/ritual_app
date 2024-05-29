import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/home_screen/widgets/preview_widget.dart';
import 'package:ritual_app/screens/home_screen/widgets/widgets.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/service_locator.dart';
import 'package:ritual_app/utils/utils.dart';
import 'package:video_player/video_player.dart';

//TODO Move  function connected with button to the separate widget,
// remove auto player,looks like  current code works
// fine

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
  List<XFile>? _mediaFileList;
  final mediaServiceInterface = getIt<MediaServiceInterface>();

  void _setImageFileListFromFile(XFile? value) {
    _mediaFileList = value == null ? null : <XFile>[value];
  }

  dynamic _pickImageError;
  bool isVideo = false;

  VideoPlayerController? _controller;
  VideoPlayerController? _toBeDisposed;
  String? _retrieveDataError;

  final ImagePicker _picker = ImagePicker();

  Future<void> _playVideo(XFile? file) async {
    if (file != null && mounted) {
      await _disposeVideoController();
      late VideoPlayerController controller;
      if (kIsWeb) {
        controller = VideoPlayerController.networkUrl(Uri.parse(file.path));
      } else {
        controller = VideoPlayerController.file(File(file.path));
      }
      _controller = controller;
      // In web, most browsers won't honor a programmatic call to .play
      // if the video has a sound track (and is not muted).
      // Mute the video so it auto-plays in web!
      // This is not needed if the call to .play is the result of user
      // interaction (clicking on a "play" button, for example).
      const double volume = kIsWeb ? 0.0 : 1.0;
      await controller.setVolume(volume);
      await controller.initialize();
      await controller.setLooping(true);
      await controller.play();
      setState(() {});
    }
  }

  Future<int> getFileSize(XFile file) async {
    final fileInfo = File(file.path);
    return await fileInfo.length();
  }

  Future<void> _onImageButtonPressed(
    ImageSource source, {
    required BuildContext context,
    bool isMulti = false,
    bool isMedia = false,
  }) async {
    if (_controller != null) {
      await _controller!.setVolume(0.0);
    }
    if (context.mounted) {
      await showDialog(
        context: context,
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
                  for (var file in pickedFileList) {
                    // int sizeBefore = await getFileSize(file);

                    // _log('After compression: ${file.name} - $sizeBefore bytes');
                    final compressedFile =
                        await mediaServiceInterface.compressFile(file);
                    compressedList.add(compressedFile);

                    final fileName = isMedia
                        ? 'media/${compressedFile.name}.jpg'
                        : 'image/${compressedFile.name}.jpg';

                    BlocProvider.of<MediaBloc>(context).add(
                      UploadMedia(
                        file: File(compressedFile.path),
                        filePath: fileName,
                      ),
                    );

                    // int sizeAfter = await getFileSize(compressedFile);
                    // _log(
                    //     'After compression: ${compressedFile.name} - $sizeAfter bytes');
                  }

                  setState(() {
                    _mediaFileList = compressedList;
                  });
                }
              } catch (e) {
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
  void deactivate() {
    if (_controller != null) {
      _controller!.setVolume(0.0);
      _controller!.pause();
    }
    super.deactivate();
  }

  @override
  void dispose() {
    _disposeVideoController();
    super.dispose();
  }

  Future<void> _disposeVideoController() async {
    if (_toBeDisposed != null) {
      await _toBeDisposed!.dispose();
    }
    _toBeDisposed = _controller;
    _controller = null;
  }

  Widget _previewVideo() {
    final Text? retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
      return retrieveError;
    }
    if (_controller == null) {
      return const Text(
        'You have not yet picked a video',
        textAlign: TextAlign.center,
      );
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: VideoPlayerWidget(
        controller: _controller!,
      ),
    );
  }

  Widget _previewImages() {
    final Text? retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
      return retrieveError;
    }
    if (_mediaFileList != null) {
      return PreviewWidget(
        mediaFileList: _mediaFileList,
      );
    } else if (_pickImageError != null) {
      return Text(
        'Pick image error: $_pickImageError',
        textAlign: TextAlign.center,
      );
    } else {
      return const Text(
        'You have not yet picked an image.',
        textAlign: TextAlign.center,
      );
    }
  }

  Widget _handlePreview() {
    if (isVideo) {
      return _previewVideo();
    } else {
      return _previewImages();
    }
  }

  Future<void> retrieveLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      if (response.type == RetrieveType.video) {
        isVideo = true;
        await _playVideo(response.file);
      } else {
        isVideo = false;
        setState(() {
          if (response.files == null) {
            _setImageFileListFromFile(response.file);
          } else {
            _mediaFileList = response.files;
          }
        });
      }
    } else {
      _retrieveDataError = response.exception!.code;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: !kIsWeb && defaultTargetPlatform == TargetPlatform.android
            ? FutureBuilder<void>(
                future: retrieveLostData(),
                builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      return const Text(
                        'You have not yet picked an image.',
                        textAlign: TextAlign.center,
                      );
                    case ConnectionState.done:
                      return _handlePreview();
                    case ConnectionState.active:
                      if (snapshot.hasError) {
                        return Text(
                          'Pick image/video error: ${snapshot.error}}',
                          textAlign: TextAlign.center,
                        );
                      } else {
                        return const Text(
                          'You have not yet picked an image.',
                          textAlign: TextAlign.center,
                        );
                      }
                  }
                },
              )
            : _handlePreview(),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          UploaderButton(
            onPressed: () {
              isVideo = false;
              _onImageButtonPressed(
                ImageSource.gallery,
                context: context,
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
                context: context,
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

  Text? _getRetrieveErrorWidget() {
    if (_retrieveDataError != null) {
      final Text result = Text(_retrieveDataError!);
      _retrieveDataError = null;
      return result;
    }
    return null;
  }
}
