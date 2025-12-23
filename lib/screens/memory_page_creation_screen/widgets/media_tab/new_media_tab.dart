import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_page_creation_screen/widgets/media_tab/media_tab_widgets/widgets.dart';

class NewMediaTabWidget extends StatefulWidget {
  final EditableMedia media;
  final ValueChanged<EditableMedia> onChanged;

  const NewMediaTabWidget({
    super.key,
    required this.media,
    required this.onChanged,
  });

  @override
  State<NewMediaTabWidget> createState() => _NewMediaTabWidgetState();
}

class _NewMediaTabWidgetState extends State<NewMediaTabWidget>
    with AutomaticKeepAliveClientMixin {
  late EditableMedia _media;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    // Clone the incoming media into local state
    _media = widget.media;
  }

  @override
  bool get wantKeepAlive => true;

  void _notify() {
    widget.onChanged(_media);
  }

  // Photo pick handler
  Future<void> _pickPhotos() async {
    final picks = await _picker.pickMultiImage(limit: 5);
    if (picks.isNotEmpty) {
      setState(() {
        _media = _media.copyWith(
          newPhotoFiles: [..._media.newPhotoFiles, ...picks]
              .take(5) // cap at 5
              .toList(),
        );
      });
      _notify();
    }
  }

  // Video pick handler
  Future<void> _pickVideos() async {
    final picks = await _picker.pickMultipleMedia(
      // if pickMultipleMedia exists, use that
      limit: 2,
    );
    if (picks.isNotEmpty) {
      setState(() {
        _media = _media.copyWith(
          newVideoFiles: [..._media.newVideoFiles, ...picks].take(5).toList(),
        );
      });
      _notify();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 8),
          MediaHeader(
            title: 'Photos',
            existingCount: _media.existingPhotoUrls.length,
            newCount: _media.newPhotoFiles.length,
            onAdd: _pickPhotos,
          ),
          const SizedBox(height: 8),
          PhotoGridWidget(
            media: _media,
            onPhotoPick: (PhotoItem item) {
              setState(() {
                if (item.isExisting) {
                  _media.existingPhotoUrls.remove(item.url!);
                } else {
                  _media.newPhotoFiles.remove(item.file!);
                }
              });
              _notify();
            },
          ),
          const SizedBox(height: 24),
          MediaHeader(
            title: 'Videos',
            existingCount: _media.existingVideoUrls.length,
            newCount: _media.newVideoFiles.length,
            onAdd: _pickVideos,
          ),
          const SizedBox(height: 8),
          VideoGridWidget(
            media: _media,
            onVideoPick: (VideoItem item) {
              WidgetsBinding.instance.addPostFrameCallback(
                (_) {
                  setState(
                    () {
                      if (item.isExisting) {
                        _media.existingVideoUrls.remove(item.url!);
                      } else {
                        _media.newVideoFiles.remove(item.file!);
                      }
                    },
                  );
                },
              );
              _notify();
            },
          ),
        ],
      ),
    );
  }
}
