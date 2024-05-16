import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ritual_app/services/permission/permission_service.dart';
import 'package:ritual_app/utils/utils.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'permission_handler_permission_service');

class PermissionHandlerPermissionService implements PermissionService {
  @override
  Future<PermissionStatus> requestCameraPermission() async {
    return await Permission.camera.request();
  }

  @override
  Future<PermissionStatus> requestPhotosPermission() async {
    return await Permission.photos.request();
  }

  @override
  Future<bool> handleCameraPermission(BuildContext context) async {
    PermissionStatus cameraPermissionStatus = await requestCameraPermission();

    if (cameraPermissionStatus != PermissionStatus.granted) {
      _log('😰 Permission to camera was not granted! 😰 ');
      if (context.mounted) {
        await showDialog(
          context: context,
          builder: (context) => PermissionDialogWidget(
            onConfirm: () => openAppSettings(),
            title: 'Camera Permission',
            subtitle:
                'Camera permission should Be granted to use this feature, would you like to go to app settings to give camera permission?',
          ),
        );
      }
      return false;
    }
    return true;
  }

  @override
  Future<bool> handlePhotosPermission(BuildContext context) async {
    PermissionStatus photosPermissionStatus = await requestPhotosPermission();
    _log('cameraPermissionStatus: $photosPermissionStatus');

    if (photosPermissionStatus != PermissionStatus.granted) {
      final l10n = l10nOf(context);

      _log(' 😰 Permission to photos not granted! 😰');
      if (context.mounted) {
        await showDialog(
          context: context,
          builder: (context) => PermissionDialogWidget(
            onConfirm: () => openAppSettings(),
            title: l10n.permissionTitle,
            subtitle: l10n.permissionSubtitle,
          ),
        );
      }
      return false;
    }
    return true;
  }
}
