import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ritual_app/services/media/media_service.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/permission/permission_handler_permission_service.dart';
import 'package:ritual_app/services/permission/permission_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator({
  required FirebaseAuth auth,
  required Reference storageRef,
  required GoogleSignIn googleSignIn,
}) {
  getIt.registerSingleton<PermissionService>(
    PermissionHandlerPermissionService(),
  );

  getIt.registerSingleton<MediaServiceInterface>(MediaService());

  getIt.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );

  getIt.registerSingleton<FirebaseStorage>(FirebaseStorage.instance);

  getIt.registerSingleton<FirebaseAuth>(auth);
  getIt.registerSingleton<Reference>(storageRef);
  getIt.registerSingleton<GoogleSignIn>(googleSignIn);
}
