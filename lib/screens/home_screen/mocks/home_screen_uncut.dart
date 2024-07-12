// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:ritual_app/screens/memory_page_creation_screen/widgets/preview_widget.dart';
// import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';
// import 'package:ritual_app/utils/utils.dart';
// import 'package:video_player/video_player.dart';

// void _log(dynamic message) => Logger.projectLog(message, name: 'home_screen');

// typedef OnPickImageCallback = void Function(
//   double? maxWidth,
//   double? maxHeight,
//   int? quality,
//   int? limit,
// );

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key, this.title});

//   final String? title;

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<XFile>? _mediaFileList;

//   void _setImageFileListFromFile(XFile? value) {
//     _mediaFileList = value == null ? null : <XFile>[value];
//   }

//   dynamic _pickImageError;
//   bool isVideo = false;

//   VideoPlayerController? _controller;
//   VideoPlayerController? _toBeDisposed;
//   String? _retrieveDataError;

//   final ImagePicker _picker = ImagePicker();

//   Future<void> _playVideo(XFile? file) async {
//     if (file != null && mounted) {
//       await _disposeVideoController();
//       late VideoPlayerController controller;
//       if (kIsWeb) {
//         controller = VideoPlayerController.networkUrl(Uri.parse(file.path));
//       } else {
//         controller = VideoPlayerController.file(File(file.path));
//       }
//       _controller = controller;
//       // In web, most browsers won't honor a programmatic call to .play
//       // if the video has a sound track (and is not muted).
//       // Mute the video so it auto-plays in web!
//       // This is not needed if the call to .play is the result of user
//       // interaction (clicking on a "play" button, for example).
//       const double volume = kIsWeb ? 0.0 : 1.0;
//       await controller.setVolume(volume);
//       await controller.initialize();
//       await controller.setLooping(true);
//       await controller.play();
//       setState(() {});
//     }
//   }

//   Future<void> _onImageButtonPressed(
//     ImageSource source, {
//     required BuildContext context,
//     bool isMultiImage = false,
//     bool isMedia = false,
//   }) async {
//     if (_controller != null) {
//       await _controller!.setVolume(0.0);
//     }
//     if (context.mounted) {
//       if (isVideo) {
//         final XFile? file = await _picker.pickVideo(
//             source: source, maxDuration: const Duration(seconds: 10));
//         await _playVideo(file);
//       } else if (isMultiImage) {
//         await showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return ImagePickerDialog(
//               isMulti: true,
//               onPick: (
//                 double? maxWidth,
//                 double? maxHeight,
//                 int? quality,
//                 int? limit,
//               ) async {
//                 try {
//                   final List<XFile> pickedFileList = isMedia
//                       ? await _picker.pickMultipleMedia(
//                           maxWidth: maxWidth,
//                           maxHeight: maxHeight,
//                           imageQuality: quality,
//                           limit: limit,
//                         )
//                       : await _picker.pickMultiImage(
//                           maxWidth: maxWidth,
//                           maxHeight: maxHeight,
//                           imageQuality: quality,
//                           limit: limit,
//                         );
//                   setState(() {
//                     _mediaFileList = pickedFileList;
//                   });
//                 } catch (e) {
//                   setState(() {
//                     _pickImageError = e;
//                   });
//                 }
//               },
//             );
//           },
//         );
//       } else if (isMedia) {
//         await showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return ImagePickerDialog(
//               isMulti: false,
//               onPick: (
//                 double? maxWidth,
//                 double? maxHeight,
//                 int? quality,
//                 int? limit,
//               ) async {
//                 try {
//                   final List<XFile> pickedFileList = <XFile>[];
//                   final XFile? media = await _picker.pickMedia(
//                     maxWidth: maxWidth,
//                     maxHeight: maxHeight,
//                     imageQuality: quality,
//                   );
//                   if (media != null) {
//                     pickedFileList.add(media);
//                     setState(() {
//                       _mediaFileList = pickedFileList;
//                     });
//                   }
//                 } catch (e) {
//                   setState(() {
//                     _pickImageError = e;
//                   });
//                 }
//               },
//             );
//           },
//         );
//       } else {
//         await showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return ImagePickerDialog(
//               isMulti: false,
//               onPick: (
//                 double? maxWidth,
//                 double? maxHeight,
//                 int? quality,
//                 int? limit,
//               ) async {
//                 try {
//                   final XFile? pickedFile = await _picker.pickImage(
//                     source: source,
//                     maxWidth: maxWidth,
//                     maxHeight: maxHeight,
//                     imageQuality: quality,
//                   );
//                   setState(() {
//                     _setImageFileListFromFile(pickedFile);
//                   });
//                 } catch (e) {
//                   setState(() {
//                     _pickImageError = e;
//                   });
//                 }
//               },
//             );
//           },
//         );
//       }
//     }
//   }

//   @override
//   void deactivate() {
//     if (_controller != null) {
//       _controller!.setVolume(0.0);
//       _controller!.pause();
//     }
//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     _disposeVideoController();
//     super.dispose();
//   }

//   Future<void> _disposeVideoController() async {
//     if (_toBeDisposed != null) {
//       await _toBeDisposed!.dispose();
//     }
//     _toBeDisposed = _controller;
//     _controller = null;
//   }

//   Widget _previewVideo() {
//     final Text? retrieveError = _getRetrieveErrorWidget();
//     if (retrieveError != null) {
//       return retrieveError;
//     }
//     if (_controller == null) {
//       return const Text(
//         'You have not yet picked a video',
//         textAlign: TextAlign.center,
//       );
//     }
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: VideoPlayerWidget(
//         controller: _controller!,
//       ),
//     );
//   }

//   Widget _previewImages() {
//     final Text? retrieveError = _getRetrieveErrorWidget();
//     if (retrieveError != null) {
//       return retrieveError;
//     }
//     if (_mediaFileList != null) {
//       return PreviewWidget(
//         mediaFileList: _mediaFileList,
//       );
//     } else if (_pickImageError != null) {
//       return Text(
//         'Pick image error: $_pickImageError',
//         textAlign: TextAlign.center,
//       );
//     } else {
//       return const Text(
//         'You have not yet picked an image.',
//         textAlign: TextAlign.center,
//       );
//     }
//   }

//   Widget _handlePreview() {
//     if (isVideo) {
//       return _previewVideo();
//     } else {
//       return _previewImages();
//     }
//   }

//   Future<void> retrieveLostData() async {
//     final LostDataResponse response = await _picker.retrieveLostData();
//     if (response.isEmpty) {
//       return;
//     }
//     if (response.file != null) {
//       if (response.type == RetrieveType.video) {
//         isVideo = true;
//         await _playVideo(response.file);
//       } else {
//         isVideo = false;
//         setState(() {
//           if (response.files == null) {
//             _setImageFileListFromFile(response.file);
//           } else {
//             _mediaFileList = response.files;
//           }
//         });
//       }
//     } else {
//       _retrieveDataError = response.exception!.code;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title!),
//       ),
//       body: Center(
//         child: !kIsWeb && defaultTargetPlatform == TargetPlatform.android
//             ? FutureBuilder<void>(
//                 future: retrieveLostData(),
//                 builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
//                   switch (snapshot.connectionState) {
//                     case ConnectionState.none:
//                     case ConnectionState.waiting:
//                       return const Text(
//                         'You have not yet picked an image.',
//                         textAlign: TextAlign.center,
//                       );
//                     case ConnectionState.done:
//                       return _handlePreview();
//                     case ConnectionState.active:
//                       if (snapshot.hasError) {
//                         return Text(
//                           'Pick image/video error: ${snapshot.error}}',
//                           textAlign: TextAlign.center,
//                         );
//                       } else {
//                         return const Text(
//                           'You have not yet picked an image.',
//                           textAlign: TextAlign.center,
//                         );
//                       }
//                   }
//                 },
//               )
//             : _handlePreview(),
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           // Semantics(
//           //   label: 'image_picker_example_from_gallery',
//           //   child: FloatingActionButton(
//           //     onPressed: () {
//           //       isVideo = false;
//           //       _onImageButtonPressed(ImageSource.gallery, context: context);
//           //     },
//           //     heroTag: 'image0',
//           //     tooltip: 'Pick Image from gallery',
//           //     child: const Icon(Icons.payments),
//           //   ),
//           // ),
//           UploaderButton(
//             onPressed: () {
//               isVideo = false;
//               _onImageButtonPressed(
//                 ImageSource.gallery,
//                 context: context,
//                 isMultiImage: true,
//                 isMedia: true,
//               );
//             },
//             heroTag: 'MultiMedia',
//             tooltip: 'Pick Multiple Media from gallery',
//             icon: Icons.photo_library,
//           ),
//           // UploaderButton(
//           //   onPressed: () {
//           //     isVideo = false;
//           //     _onImageButtonPressed(
//           //       ImageSource.gallery,
//           //       context: context,
//           //       isMedia: false,
//           //     );
//           //   },
//           //   heroTag: 'media',
//           //   tooltip: 'Pick Single Media from gallery',
//           //   icon: Icons.photo_library,
//           // ),
//           UploaderButton(
//             onPressed: () {
//               isVideo = false;
//               _onImageButtonPressed(
//                 ImageSource.gallery,
//                 context: context,
//                 isMultiImage: true,
//               );
//             },
//             heroTag: 'MultiImage',
//             tooltip: 'Pick Multiple Image from gallery',
//             icon: Icons.photo_library,
//           ),
//           // if (_picker.supportsImageSource(ImageSource.camera))
//           //   UploaderButton(
//           //     onPressed: () {
//           //       isVideo = false;
//           //       _onImageButtonPressed(ImageSource.camera, context: context);
//           //     },
//           //     heroTag: 'image2',
//           //     tooltip: 'Take a Photo',
//           //     icon: Icons.camera_alt,
//           // ),
//           // UploaderButton(
//           //   // backgroundColor: Colors.red,
//           //   onPressed: () {
//           //     isVideo = true;
//           //     _onImageButtonPressed(ImageSource.gallery, context: context);
//           //   },
//           //   heroTag: 'video0',
//           //   tooltip: 'Pick Video from gallery',
//           // icon: Icons.video_library,
//           // ),
//           // if (_picker.supportsImageSource(ImageSource.camera))
//           //   UploaderButton(
//           //     // backgroundColor: Colors.red,
//           //     onPressed: () {
//           //       isVideo = true;
//           //       _onImageButtonPressed(ImageSource.camera, context: context);
//           //     },
//           //     heroTag: 'video1',
//           //     tooltip: 'Take a Video',
//           //     icon: Icons.videocam,
//           //   ),
//         ],
//       ),
//     );
//   }

//   Text? _getRetrieveErrorWidget() {
//     if (_retrieveDataError != null) {
//       final Text result = Text(_retrieveDataError!);
//       _retrieveDataError = null;
//       return result;
//     }
//     return null;
//   }
// }
