import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/permission/permission_service.dart';
import 'package:ritual_app/services/service_locator.dart';
import 'package:ritual_app/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'media_service');

class MediaService implements MediaServiceInterface {
  @override
  PermissionService get permissionService => getIt<PermissionService>();

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
  Future<XFile?> uploadImage(
    BuildContext context,
    AppImageSource appImageSource, {
    bool shouldCompress = true,
  }) async {
    // Handle permissions according to image source,
    bool canProceed =
        await _handleImageUploadPermissions(context, appImageSource);

    if (canProceed) {
      XFile? processedPickedImageFile;

      // Convert our own AppImageSource into a format readable by the used package
      // In this case it's an ImageSource enum
      ImageSource? _imageSource =
          ImageSource.values.byName(appImageSource.name);

      final imagePicker = ImagePicker();
      final rawPickedImageFile =
          await imagePicker.pickImage(source: _imageSource, imageQuality: 50);

      if (rawPickedImageFile != null) {
        //to convert from XFile type provided by the package to dart:io's File type
        processedPickedImageFile = XFile(rawPickedImageFile.path);
        if (shouldCompress) {
          processedPickedImageFile =
              await compressFile(processedPickedImageFile);
        }
      }
      return processedPickedImageFile;
    }
    return null;
  }

  @override
  Future<XFile?> compressFile(XFile file, {int quality = 30}) async {
    final dir = await path_provider.getTemporaryDirectory();
    final targetPath =
        dir.absolute.path + '/${Random().nextInt(1000)}-temp.jpg';

    return await FlutterImageCompress.compressAndGetFile(
      file.path,
      targetPath,
      quality: quality,
    );
  }
}
