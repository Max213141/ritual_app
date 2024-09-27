import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ritual_app/utils/utils.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

// import 'package:ritual_app/blocs/media_bloc/media_bloc.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/service_locator.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'media_tab_widget');

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
  // final StreamController<double> _progressController =
  //     StreamController<double>();
  final ImagePicker _picker = ImagePicker();

  late BuildContext _context;

  bool isVideo = false;
  dynamic pickImageError;
  List<XFile> _selectedPhotos = []; // List to hold selected photos
  List<XFile> _selectedVideo = []; // List to hold selected video
  List<Uint8List?> _thumbnailList = []; // List to hold sumbnails for videos

  @override
  void initState() {
    mediaServiceInterface = getIt<MediaServiceInterface>();
    super.initState();
    _context = context;
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MediaTitleWidget(
              title: 'Photo',
              overallNumber: _selectedPhotos.length,
            ),
            const SizedBox(height: 8),
            PickedMediaList(
              mediaList: _selectedPhotos,
              onPressPickMedia: () => _onImageButtonPressed(
                ImageSource.gallery,
                isMulti: true,
                isMedia: false,
              ),
              pickerIcon: 'assets/icons/add_photo.svg',
              closePhotoCallback: (int index) => setState(() {
                _selectedPhotos.removeAt(index); // Remove the photo
              }),
            ),
            const SizedBox(height: 16),
            MediaTitleWidget(
              title: 'Video',
              overallNumber: _selectedVideo.length,
            ),
            const SizedBox(height: 8),
            PickedMediaList(
              mediaList: _selectedVideo,
              thumbnailList: _thumbnailList,
              onPressPickMedia: () => _onImageButtonPressed(
                ImageSource.gallery,
                isMulti: true,
                isMedia: true,
              ),
              pickerIcon: 'assets/icons/add_video.svg',
              closeVideoCallback: (int index) => setState(
                () {
                  _selectedVideo.removeAt(index);
                  _thumbnailList.removeAt(index);
                },
              ),
            ),
          ],
        ),
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
      List<Uint8List?> thumbnailList = [];
      final List<XFile> pickedFileList = isMedia
          ? await _picker.pickMultipleMedia(
              limit: 5,
            )
          : await _picker.pickMultiImage(
              limit: 5,
            );

      if (pickedFileList.isNotEmpty) {
        for (var file in pickedFileList) {
          final compressedFile = await mediaServiceInterface.compressFile(file);
          compressedList.add(compressedFile);
          //final fileName = isMedia
          //  ? 'media/${compressedFile.name}'
          //  : 'image/${compressedFile.name}';
          if (!mounted) return;
          // Upload the file
          // BlocProvider.of<MediaBloc>(_context).add(
          //   UploadMedia(
          //     file: File(compressedFile.path),
          //     filePath: isMedia
          //         ? 'media/${compressedFile.name}'
          //         : 'image/${compressedFile.name}',
          //     progressController: _progressController,
          //   ),
          // );
        }

        if (isMedia) {
          thumbnailList = await _generateThumbnailsForVideos(compressedList);
        }
        setState(
          () {
            if (isMedia) {
              _selectedVideo.addAll(compressedList);
              _thumbnailList = thumbnailList;
              // Ensure the list does not exceed 5 items
              if (_selectedVideo.length > 5) {
                _selectedVideo = _selectedVideo.sublist(0, 5);
              }
            } else {
              _selectedPhotos.addAll(compressedList);

              // Ensure the list does not exceed 5 items
              if (_selectedPhotos.length > 5) {
                _selectedPhotos = _selectedPhotos.sublist(0, 5);
              }
            }
          },
        );
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        pickImageError = e;
      });
    }
  }

  Future<List<Uint8List?>> _generateThumbnailsForVideos(
      List<XFile> videos) async {
    if (videos.isEmpty) {
      _log("No videos selected for thumbnails");
      // Prevents the function from proceeding if there are no videos
    }

    // Generate thumbnails for the selected videos
    List<Uint8List?> thumbnails = await Future.wait(
      videos.map((video) async {
        final thumbnail = await VideoThumbnail.thumbnailData(
          video: video.path,
          imageFormat: ImageFormat.JPEG,
          maxWidth: 320,
          quality: 50,
        );
        return thumbnail;
      }),
    );

    // Update the state with the generated thumbnails
    return thumbnails;
  }
}
