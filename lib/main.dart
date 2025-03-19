import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/firebase_options.dart';
import 'package:ritual_app/ritual_app.dart';
import 'package:ritual_app/services/service_locator.dart';
import 'package:ritual_app/utils/svg_preloader.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  debugPaintSizeEnabled = true; // TODO remove later
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();

  await preloadSvgs(
    [
      // 'assets/icons/home.svg',
    ],
  );
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  final GoogleSignIn googleSignIn = GoogleSignIn();

  final Reference storageRef = FirebaseStorage.instance.ref();
  HiveStore hiveStore = HiveStore();

  ///TODO splash_icon package need to be configured for iOS
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    RitualApp(
      auth: auth,
      hiveStore: hiveStore,
      media: storageRef,
      googleSignIn: googleSignIn,
    ),
  );
}
