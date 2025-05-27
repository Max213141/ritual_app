import 'dart:io';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:http/http.dart' as http;

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:ritual_app/entities/db_entities/db_entities.dart';

import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/permission/permission_service.dart';
import 'package:ritual_app/services/service_locator.dart';
import 'package:ritual_app/utils/utils.dart';
import 'package:video_compress/video_compress.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'media_service');

class MediaService implements MediaServiceInterface {
  @override
  PermissionService get permissionService => getIt<PermissionService>();
  @override
  FirebaseStorage storage;

  MediaService({
    FirebaseStorage? storageInstance,
  }) : storage = storageInstance ?? FirebaseStorage.instance;

  Future<bool> _handleImageUploadPermissions(
      BuildContext context, AppImageSource? imageSource) async {
    _log('Image source-> $imageSource');
    if (imageSource == null) {
      return false;
    }
    if (imageSource == AppImageSource.camera) {
      return await permissionService.handleCameraPermission(context);
    } else if (imageSource == AppImageSource.gallery) {
      return await permissionService.handlePhotosPermission(context);
    } else {
      return false;
    }
  }

  @override
  Future<File?> uploadImage(
    BuildContext context,
    AppImageSource appImageSource, {
    bool shouldCompress = true,
  }) async {
    // Handle permissions according to image source,
    bool canProceed =
        await _handleImageUploadPermissions(context, appImageSource);

    if (canProceed) {
      File? processedPickedImageFile;

      // Convert our own AppImageSource into a format readable by the used package
      // In this case it's an ImageSource enum
      ImageSource? imageSource = ImageSource.values.byName(appImageSource.name);

      final imagePicker = ImagePicker();
      final rawPickedImageFile =
          await imagePicker.pickImage(source: imageSource, imageQuality: 50);

      // final pickedImageConvertedToFile =
      //     rawPickedImageFile != null ? File(rawPickedImageFile.path) : null;

      if (rawPickedImageFile != null) {
        _log('Picked image -> ${rawPickedImageFile.path}');

        //to convert from XFile type provided by the package to dart:io's File type
        processedPickedImageFile = File(rawPickedImageFile.path);
        if (shouldCompress) {
          // processedPickedImageFile =
          //     await compressFile(processedPickedImageFile);
        }
      }
      _log('Proccessed Picked image -> $processedPickedImageFile');

      return processedPickedImageFile;
    }
    return null;
  }

  @override
  Future<XFile> compressFile(XFile file, {int quality = 30}) async {
    final dir = await getTemporaryDirectory();
    final targetPath = '${dir.absolute.path}/${Random().nextInt(1000)}-temp';
    //TODO use that file which size is lower after compression

    if (file.path.toLowerCase().endsWith('.mp4') ||
        file.path.toLowerCase().endsWith('.mov')) {
      // Compress video
      final MediaInfo? compressedVideo = await VideoCompress.compressVideo(
        file.path,
        quality: VideoQuality.Res1920x1080Quality,
        deleteOrigin: false, // Keep the original file
        includeAudio: true,
      );

      if (compressedVideo != null && compressedVideo.file != null) {
        return XFile(compressedVideo.file!.path);
      }
    } else {
      // Compress image
      final targetImagePath = '$targetPath.jpg';
      final compressedImage = await FlutterImageCompress.compressAndGetFile(
        file.path,
        targetImagePath,
        quality: quality,
      );

      if (compressedImage != null) {
        return XFile(compressedImage.path);
      }
      // if (targetImagePath != null) {
      //   return XFile(targetImagePath);
      // }
    }

    // Return original file if compression fails
    return file;
  }

  @override
  Future<String?> uploadFileAndGetUrl({
    required String filePath,
    required File file,
  }) async {
    try {
      final ref = storage.ref().child(filePath);
      final uploadTask = ref.putFile(file);
      await uploadTask;
      final downloadUrl = await ref.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      Logger.projectLog('Upload failed: $e', name: 'MediaService');
      return null;
    }
  }

  @override
  Future<LocalMemoryPageMedia> downloadMediaFile({
    required List<String> photoUrls,
    required List<String> videoUrls,
  }) async {
    final tempDir = await getTemporaryDirectory();
    final photos = <XFile>[];
    final videos = <XFile>[];

    // helper to download & save
    Future<XFile?> downloadAndSave(String url, String filename) async {
      try {
        final resp = await http.get(Uri.parse(url));
        if (resp.statusCode == 200) {
          final file = File('${tempDir.path}/$filename');
          await file.writeAsBytes(resp.bodyBytes);
          return XFile(file.path);
        }
      } catch (_) {}
      return null;
    }

    for (var i = 0; i < photoUrls.length; i++) {
      final xfile = await downloadAndSave(photoUrls[i], 'photo_$i.jpg');
      if (xfile != null) photos.add(xfile);
    }

    for (var i = 0; i < videoUrls.length; i++) {
      final xfile = await downloadAndSave(videoUrls[i], 'video_$i.mp4');
      if (xfile != null) videos.add(xfile);
    }

    return LocalMemoryPageMedia(photos: photos, videos: videos);
  }

  @override
  Future<bool> saveQrImage({
    required QrImage qrImage,
    required PrettyQrDecoration decoration,
    required int size,
  }) async {
    try {
      final hasPermission = await Permission.storage.request();
      if (!hasPermission.isGranted) return false;

      final ByteData? byteData = await qrImage.toImageAsBytes(
        size: size,
        format: ui.ImageByteFormat.png,
        decoration: decoration,
      );

      if (byteData == null) return false;

      final Uint8List pngBytes = byteData.buffer.asUint8List();

      final result = await LocalGallerySaver.saveImage(
        pngBytes,
        quality: 100,
        name: 'qr_code_${DateTime.now().millisecondsSinceEpoch}',
        isReturnImagePathOfIOS: Platform.isIOS,
      );

      return result['isSuccess'] == true;
    } catch (e) {
      _log('Error saving QR: $e');
      return false;
    }
  }
}
