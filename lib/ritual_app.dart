import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/entities/hive_entities/hive_entities.dart';
import 'package:ritual_app/my_app_locale_wrapper.dart';
import 'package:ritual_app/screens/screens.dart';
import 'package:ritual_app/utils/utils.dart';

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
    final router = GoRouter(
      observers: [MyNavigatorObserver()],
      routes: [
        // GoRoute(
        //   path: '/',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return IntroScreen();
        //   },
        // ),
        GoRoute(
          name: 'initial_settings',
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            // return SplashScreen();

            return InitialHivePage(
              auth: auth,
            );
          },
        ),

        GoRoute(
          name: 'initial_page',
          path: '/initial_page',
          builder: (BuildContext context, GoRouterState state) {
            // return SplashScreen();
            return InitialPage(
              auth: auth,
            );
          },
          routes: <RouteBase>[
            GoRoute(
              name: 'auth_forgot_password',
              path: 'auth_forgot_password',
              builder: (BuildContext context, GoRouterState state) {
                return AuthForgotPasswordScreen();
              },
            ),
          ],
        ),
        GoRoute(
          name: 'home',
          path: '/home',
          builder: (BuildContext context, GoRouterState state) {
            return const MainScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              name: 'mp_creation',
              path: 'mp_creation',
              builder: (BuildContext context, GoRouterState state) {
                return const MemoryPageCreationScreen();
              },
              routes: <RouteBase>[
                GoRoute(
                  name: 'mp_preview_screen',
                  path: 'mp_preview_screen',
                  builder: (BuildContext context, GoRouterState state) {
                    return const MemoryPagePreviewScreen();
                  },
                ),
              ],
            ),
            GoRoute(
              name: 'profile_screen',
              path: 'profile_screen',
              builder: (BuildContext context, GoRouterState state) {
                return const ProfileScreen();
              },
            ),
            GoRoute(
              name: 'about_us_screen',
              path: 'about_us_screen',
              builder: (BuildContext context, GoRouterState state) {
                return const AboutUsScreen();
              },
            ),
            GoRoute(
              name: 'support_screen',
              path: 'support_screen',
              builder: (BuildContext context, GoRouterState state) {
                return const SupportScreen();
              },
            ),
            GoRoute(
              name: 'settings_screen',
              path: 'settings_screen',
              builder: (BuildContext context, GoRouterState state) {
                return const SettingsScreen();
              },
            ),
          ],
        ),
        GoRoute(
          name: 'qr_scan',
          path: '/qr_scan',
          builder: (BuildContext context, GoRouterState state) {
            return const QrScanScreen();
          },
          // routes: <RouteBase>[
          //   GoRoute(
          //     name: 'profile_screen',
          //     path: 'profile_screen',
          //     builder: (BuildContext context, GoRouterState state) {
          //       return const ProfileScreen();
          //     },
          //   ),
          // ],
        ),

        // GoRoute(
        //   path: '/auth',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return AuthScreen(
        //       auth: auth,
        //     );
        //   },
        // ),
      ],
      errorBuilder: (context, state) => const ErrorScreen(),
      debugLogDiagnostics: true,
    );

    return FutureBuilder(
      future: _initHive(),
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
                  auth: auth,
                  googleSignIn: googleSignIn,
                ),
              ),
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
