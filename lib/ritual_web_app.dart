import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/service_locator.dart';
import 'package:ritual_app/utils/utils.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'screens/memory_desk_view_screen/memory_page_view_screen.dart';
import 'screens/screens.dart';

class RitualWebApp extends StatelessWidget {
  final FirebaseAuth auth;
  final Reference storageRef;
  final String? initialDeskId;
  const RitualWebApp({
    super.key,
    required this.auth,
    required this.storageRef,
    this.initialDeskId = '1q82W5WeObrujFThheD2',
  });

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      debugLogDiagnostics: true,
      observers: [MyNavigatorObserver()],
      errorBuilder: (context, state) => const ErrorScreen(),
      routes: [
        /// 1) Catch “/” and send it to “/1q82W5…”:
        GoRoute(path: '/', redirect: (_, _) => '/$initialDeskId'),
        GoRoute(
          path: '/:id',
          name: 'md_view',
          builder: (context, state) {
            final id = state.pathParameters['id']!;
            return MemoryPageViewScreen(id: id);
          },
          routes: [
            GoRoute(
              path: 'image',
              name: 'view_image',
              builder: (context, state) =>
                  FullScreenImage.network(state.extra as String),
            ),
            GoRoute(
              path: 'video',
              name: 'view_video',
              builder: (context, state) =>
                  VideoPlayerScreen(videoUrl: state.extra as String),
            ),
          ],
        ),
      ],
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider<MemoryDeskBloc>(
          create: (_) => MemoryDeskBloc(
            firestore: getIt<FirebaseFirestore>(),
            auth: getIt<FirebaseAuth>(),
            mediaService: getIt<MediaServiceInterface>(),
          ),
        ),
        BlocProvider<MediaBloc>(create: (_) => MediaBloc(media: storageRef)),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          // FlutterNativeSplash.remove();
          return child!;
        },
      ),
    );
  }
}
