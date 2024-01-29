import 'package:bookforest/core/configs/routes/router_notifier.dart';
import 'package:bookforest/features/auth/presentation/providers/auth_controller.dart';
import 'package:bookforest/features/auth/presentation/views/login_screen.dart';
import 'package:bookforest/features/auth/presentation/views/splash_screen.dart';
import 'package:bookforest/features/book/presentation/views/book_detail_screen.dart';
import 'package:bookforest/features/library/presentation/views/library_manage_screen.dart';
import 'package:bookforest/features/library/presentation/views/library_screen.dart';
import 'package:bookforest/features/user/domain/entities/user.dart';
import 'package:bookforest/features/user/presentation/views/my_page_screen.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final goRouter = Provider<GoRouter>(
  (ref) {
    final refreshListenable = ref.read(routerNotifier);

    return GoRouter(
      initialLocation: '/splash',
      debugLogDiagnostics: true,
      observers: [
        FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
      ],
      routes: [
        GoRoute(
          path: '/splash',
          name: SplashScreen.routeName,
          builder: (context, state) => const SplashScreen().animate().fadeIn(),
        ),
        GoRoute(
          path: '/login',
          name: LoginScreen.routeName,
          // pageBuilder: (context, state) {
          //   return CustomTransitionPage(
          //     key: state.pageKey,
          //     child: const LoginScreen(),
          //     transitionsBuilder:
          //         (context, animation, secondaryAnimation, child) {
          //       return FadeTransition(
          //         opacity: animation.drive(
          //           Tween(
          //             begin: 0,
          //             end: 1,
          //           ),
          //         ),
          //         child: child,
          //       );
          //     },
          //   );
          // },
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
            path: '/library',
            name: LibraryScreen.routeName,
            builder: (context, state) => const LibraryScreen(),
            routes: [
              GoRoute(
                path: 'manage',
                name: LibraryManageScreen.routeName,
                builder: (context, state) => const LibraryManageScreen(),
              ),
            ]),
        GoRoute(
          path: '/mypage',
          name: MyPageScreen.routeName,
          builder: (context, state) => const MyPageScreen(),
        ),
        GoRoute(
          path: '/book/:id',
          name: BookDetailScreen.routeName,
          builder: (context, state) => BookDetailScreen(
            id: state.path!,
          ),
        ),
      ],
      navigatorKey: navigatorKey,
      refreshListenable: refreshListenable,
      redirect: (_, state) async {
        final user = ref.read(authControllerProvider);

        final logingIn = state.matchedLocation == SplashScreen.routeName ||
            state.matchedLocation == LoginScreen.routeName;

        if (logingIn && user is Login) {
          return LibraryScreen.routeName;
        }

        if (user is Logout) {
          return LoginScreen.routeName;
        }
        return null;
      },
    );
  },
);
