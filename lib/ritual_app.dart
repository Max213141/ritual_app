import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/entities/hive_entities/hive_entities.dart';
import 'package:ritual_app/my_app_locale_wrapper.dart';
import 'package:ritual_app/services/router/app_router.dart';
import 'package:ritual_app/services/service_locator.dart';

import 'services/media/media_service_interface.dart';

class RitualApp extends StatelessWidget {
  final FirebaseAuth auth;
  final GoogleSignIn googleSignIn;
  final Reference media;
  final HiveStore hiveStore;

  const RitualApp({
    super.key,
    required this.auth,
    required this.hiveStore,
    required this.media,
    required this.googleSignIn,
  });

  Future<void> _initHive() async {
    WidgetsFlutterBinding.ensureInitialized();
    await hiveStore.init();
    final appPreferencesBox =
        await Hive.openBox<AppPreferences>('app_preferences');
    await Hive.openBox<UserData>('user_data');
    if (appPreferencesBox.isEmpty) {
      await HiveStore().setInitialData();
    } else {
      final appPreferences = appPreferencesBox.getAt(0);
      if (appPreferences != null) {
        // App has been launched before
        appPreferences.isFirstLaunch = false;
        await appPreferences.save();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final router = createAppRouter(auth);

    return FutureBuilder(
      future: kIsWeb ? Future.delayed(const Duration(seconds: 1)) : _initHive(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // locale = HiveStore().getLocale();

          return MultiBlocProvider(
            providers: [
              BlocProvider<ThemeBloc>(create: (context) => ThemeBloc()),
              BlocProvider<LocaleBloc>(create: (context) => LocaleBloc()),
              BlocProvider<QrCamBloc>(create: (context) => QrCamBloc()),
              BlocProvider<AuthBloc>(
                create: (context) => AuthBloc(
                  firestore: getIt<FirebaseFirestore>(),
                  auth: auth,
                  googleSignIn: googleSignIn,
                ),
              ),
              BlocProvider<MemoryDeskBloc>(
                  create: (context) => MemoryDeskBloc(
                        firestore: getIt<FirebaseFirestore>(),
                        auth: getIt<FirebaseAuth>(),
                        mediaService: getIt<MediaServiceInterface>(),
                      )),
              BlocProvider<MediaBloc>(
                  create: (context) => MediaBloc(media: media)),
            ],
            child: BlocBuilder<LocaleBloc, LocaleState>(
              builder: (context, state) {
                return MyAppWrapper(
                  locale: Locale(state.locale),
                  router: router,
                );
              },
            ),
          );
        } else {
          return const MaterialApp();
        }
      },
    );

    // MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home: const MyHomePage(title: 'Flutter Demo Home Page'),
    // );
  }
}
