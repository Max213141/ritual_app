import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/firebase_options.dart';
import 'package:ritual_app/ritual_app.dart';
import 'package:ritual_app/utils/svg_preloader.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await preloadSvgs(
    [
      // 'assets/icons/home.svg',
    ],
  );
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  HiveStore hiveStore = HiveStore();

  ///TODO splash_icon package need to be configured for iOS
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    RitualApp(
      auth: auth,
      hiveStore: hiveStore,
    ),
  );
}
