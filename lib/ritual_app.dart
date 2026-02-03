import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/my_app_locale_wrapper.dart';
import 'package:ritual_app/services/router/app_router.dart';
import 'package:ritual_app/services/service_locator.dart';

import 'services/media/media_service_interface.dart';

class RitualApp extends StatelessWidget {
  final FirebaseAuth auth;
  final GoogleSignIn googleSignIn;
  final Reference storageRef;
  final String initialLocation;

  const RitualApp({
    super.key,
    required this.auth,
    required this.storageRef,
    required this.googleSignIn,
    required this.initialLocation,
  });

  @override
  Widget build(BuildContext context) {
    final router = createAppRouter(
      auth: auth,
      initialLocation: initialLocation,
    );

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
            create: (context) => MediaBloc(media: storageRef)),
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
