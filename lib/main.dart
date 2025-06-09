import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/firebase_options.dart';
import 'package:ritual_app/ritual_app.dart';
import 'package:ritual_app/services/service_locator.dart';
import 'package:ritual_app/utils/svg_preloader.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  // debugPaintSizeEnabled = true;
  WidgetsFlutterBinding.ensureInitialized();

  await preloadSvgs(
    [
      'assets/icons/add_photo.svg',
      'assets/icons/add_video.svg',
      'assets/icons/apple_logo.svg',
      'assets/icons/close.svg',
      'assets/icons/drawer_icon.svg',
      'assets/icons/empty_photo.svg',
      'assets/icons/google_logo.svg',
      'assets/icons/logo_icon.svg',
      'assets/icons/memento-logo.svg',
      'assets/icons/qr_scan_icon.svg',
      'assets/icons/torch_off_icon.svg',
      'assets/icons/wall.svg',
      'assets/images/password_reset_sent.svg',
      'assets/intro/first_slide.svg',
      'assets/intro/second_slide.svg',
      'assets/intro/third_slide.svg',
      'assets/menu_icons/about_us.svg',
      'assets/menu_icons/log_out.svg',
      'assets/menu_icons/notifications.svg',
      'assets/menu_icons/profile.svg',
      'assets/menu_icons/settings.svg',
      'assets/menu_icons/support.svg',
      'assets/socials/behance.svg',
      'assets/socials/dribbble.svg',
      'assets/socials/gmail.svg',
      'assets/socials/linkedin.svg',
      'assets/socials/telegram.svg',
    ],
  );

  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final Reference storageRef = FirebaseStorage.instance.ref();

  setupServiceLocator(
    auth: auth,
    storageRef: storageRef,
    googleSignIn: googleSignIn,
  );

  HiveStore hiveStore = HiveStore();

  ///TODO splash_icon package need to be configured for iOS
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    RitualApp(
      auth: auth,
      hiveStore: hiveStore,
      storageRef: storageRef,
      googleSignIn: googleSignIn,
    ),
  );
}
