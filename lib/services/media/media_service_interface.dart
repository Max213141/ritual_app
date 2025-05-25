import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:ritual_app/entities/db_entities/db_entities.dart';
import 'package:ritual_app/services/permission/permission_service.dart';

enum AppImageSource {
  camera,
  gallery,
}

abstract class MediaServiceInterface {
  PermissionService get permissionService;
  late FirebaseStorage storage;

  Future<File?> uploadImage(
    BuildContext context,
    AppImageSource appImageSource, {
    bool shouldCompress = true,
  });

  Future<XFile> compressFile(XFile file, {int quality = 30});

  ///Media upload and return URL
  Future<String?> uploadFileAndGetUrl({
    required String filePath,
    required File file,
  });

  Future<LocalMemoryPageMedia> downloadMediaFile({
    required List<String> photoUrls,
    required List<String> videoUrls,
  });

  Future<bool> saveQrImage({
    required QrImage qrImage,
    required PrettyQrDecoration decoration,
    required int size,
  });
}
