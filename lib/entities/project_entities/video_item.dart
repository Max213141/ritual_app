import 'package:image_picker/image_picker.dart';

class VideoItem {
  final String? url;
  final XFile? file;
  final bool isExisting;

  VideoItem._(
    this.url,
    this.file,
    this.isExisting,
  );

  factory VideoItem.existing(String url) => VideoItem._(url, null, true);
  factory VideoItem.newFile(XFile file) => VideoItem._(null, file, false);

  T when<T>({
    required T Function(String url) existing,
    required T Function(XFile file) newFile,
  }) {
    return isExisting ? existing(url!) : newFile(file!);
  }
}
