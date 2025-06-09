import 'package:image_picker/image_picker.dart';

class PhotoItem {
  final String? url;
  final XFile? file;
  final bool isExisting;
  PhotoItem._(
    this.url,
    this.file,
    this.isExisting,
  );

  factory PhotoItem.existing(String url) => PhotoItem._(url, null, true);
  factory PhotoItem.newFile(XFile file) => PhotoItem._(null, file, false);

  T when<T>({
    required T Function(String url) existing,
    required T Function(XFile file) newFile,
  }) {
    return isExisting ? existing(url!) : newFile(file!);
  }
}
