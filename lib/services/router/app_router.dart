import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_desk_view_screen/widgets/widgets.dart';
import 'package:ritual_app/screens/screens.dart';
import 'package:ritual_app/utils/utils.dart';

GoRouter createAppRouter({
  required FirebaseAuth auth,
  required String initialLocation,
}) {
  return GoRouter(
    debugLogDiagnostics: true,
    observers: [MyNavigatorObserver()],
    errorBuilder: (context, state) => const ErrorScreen(),
    initialLocation: initialLocation,
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) => initialLocation,
      ),
      GoRoute(
        name: 'intro',
        path: '/intro',
        builder: (context, state) => const IntroScreen(),
      ),
      GoRoute(
        name: 'initial_page',
        path: '/initial_page',
        builder: (context, state) =>
            // kIsWeb ? const MemoryPageViewScreen(memoryPage: page) : InitialPage(auth: auth), //TODO implement web page
            InitialPage(auth: auth),
        routes: [
          GoRoute(
            name: 'auth_forgot_password',
            path: 'auth_forgot_password',
            builder: (context, state) => const AuthForgotPasswordScreen(),
          ),
        ],
      ),
      GoRoute(
        name: 'home',
        path: '/home',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            name: 'mp_plan_selection',
            path: 'mp_plan_selection',
            builder: (context, state) => const PlanSelectionScreen(),
          ),
          GoRoute(
            name: 'mp_creation',
            path: 'mp_creation',
            builder: (context, state) {
              final incoming = state.extra as Map<String, dynamic>?;
              return MemoryDeskCreationScreen(
                initialMemoryDesk: incoming?['memoryPageData'],
                deskId: incoming?['id'],
                isEditing: incoming?['isEditing'] ?? false,
              );
            },
            routes: [
              GoRoute(
                name: 'mp_preview_screen',
                path: '/mp_preview_screen',
                builder: (context, state) {
                  final extra = state.extra as Map<String, dynamic>?;
                  if (extra == null ||
                      !extra.containsKey('memoryPageData') ||
                      !extra.containsKey('mediaData')) {
                    return const Scaffold(
                      body: Center(child: Text("Missing data for preview")),
                    );
                  }
                  return MemoryPagePreviewScreen(
                    memoryPageData: extra['memoryPageData'],
                    mediaData: extra['mediaData'],
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: 'memory_desk_loader/:deskId',
            builder: (context, state) {
              final id = state.pathParameters['deskId']!;
              return MemoryViewLoaderScreen(
                deskId: id,
              );
            },
          ),
          GoRoute(
            path: 'md_view_screen/:id',
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              final page = state.extra as MemoryDesk;
              return MemoryPageViewScreen(
                memoryDesk: page,
                id: id,
              );
            },
            routes: [
              // ─ Full-screen image from view ─
              GoRoute(
                name: 'view_image',
                path: 'image',
                builder: (context, state) {
                  final url = state.extra as String;
                  return FullScreenImage.network(url);
                },
              ),
              // ─ In-app video player from view ─
              GoRoute(
                name: 'view_video',
                path: 'video',
                builder: (context, state) {
                  final url = state.extra as String;
                  return VideoPlayerScreen(videoUrl: url);
                },
              ),
            ],
          ),
          GoRoute(
            name: 'qr_preview',
            path: 'qr_preview',
            builder: (context, state) {
              final extra = state.extra as Map<String, dynamic>?;
              if (extra == null || !extra.containsKey('memoryDeskId')) {
                return const Scaffold(
                  body: Center(child: Text("Missing data for QR Preview")),
                );
              }
              return QrPreviewScreen(memoryDeskId: extra['memoryDeskId']);
            },
          ),
          GoRoute(
            name: 'profile_screen',
            path: 'profile_screen',
            builder: (context, state) => const ProfileScreen(),
          ),
          GoRoute(
            name: 'about_us_screen',
            path: 'about_us_screen',
            builder: (context, state) => const AboutUsScreen(),
          ),
          GoRoute(
            name: 'support_screen',
            path: 'support_screen',
            builder: (context, state) => const SupportScreen(),
          ),
          GoRoute(
            name: 'settings_screen',
            path: 'settings_screen',
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
      ),
      GoRoute(
        name: 'qr_scan',
        path: '/qr_scan',
        builder: (context, state) => const QrScanScreen(),
      ),
    ],
  );
}
