import 'package:ritual_app/services/media/media_service.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/permission/permission_handler_permission_service.dart';
import 'package:ritual_app/services/permission/permission_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupServiceLocator() {
  getIt.registerSingleton<PermissionService>(
    PermissionHandlerPermissionService(),
  );

  getIt.registerSingleton<MediaServiceInterface>(
    MediaService(),
  );
}
