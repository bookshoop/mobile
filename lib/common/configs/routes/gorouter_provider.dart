import 'package:bookforest/common/configs/routes/router_notifier.dart';
import 'package:bookforest/features/auth/presentation/views/join_screen.dart';
import 'package:bookforest/features/auth/presentation/views/login_screen.dart';
import 'package:bookforest/features/auth/presentation/views/splash_screen.dart';
import 'package:bookforest/features/book/presentation/views/best_seller_screen.dart';
import 'package:bookforest/features/book/presentation/views/book_detail_screen.dart';
import 'package:bookforest/features/book/presentation/views/book_recommend_screen.dart';
import 'package:bookforest/features/book/presentation/views/book_search_screen.dart';
import 'package:bookforest/features/book_forest/data/dtos/enum/book_forest_options.dart';
import 'package:bookforest/features/book_forest/presentation/views/book_forest_search_screen.dart';
import 'package:bookforest/features/book_forest/presentation/views/home_screen.dart';
import 'package:bookforest/features/push/presentation/views/push_screen.dart';
import 'package:bookforest/features/search/presentation/views/search_screen.dart';
import 'package:bookforest/features/user/presentation/views/user_search_screen.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final goRouter = Provider<GoRouter>(
  (ref) {
    final refreshListenable = ref.read(routerNotifier);

    // var leftToRight = true;
    // ref.listen(bottomNavigationProvider, (previous, next) {
    //   if (previous != null) {
    //     leftToRight = previous > next;
    //   }
    // });
    // CustomTransitionPage<dynamic> slidePageTransition(
    //   GoRouterState state, {
    //   required bool leftToRight,
    //   required Widget child,
    // }) {
    //   return CustomTransitionPage(
    //     key: state.pageKey,
    //     child: child,
    //     transitionDuration: const Duration(milliseconds: 200),
    //     transitionsBuilder: (_, animation, __, child) {
    //       return SlideTransition(
    //         position: animation.drive(
    //           Tween<Offset>(
    //             begin: leftToRight ? const Offset(-1, 0) : const Offset(1, 0),
    //             end: Offset.zero,
    //           ),
    //         ),
    //         child: child,
    //       );
    //     },
    //   );
    // }

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
          // pageBuilder: (context, state) {
          //   return CustomTransitionPage(
          //     key: state.pageKey,
          //     child: const SplashScreen(),
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
        ),
        GoRoute(
          path: '/login',
          name: LoginScreen.routeName,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const LoginScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation.drive(
                    Tween(
                      begin: 0,
                      end: 1,
                    ),
                  ),
                  child: child,
                );
              },
            );
          },
          // builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: '/join',
          name: JoinScreen.routeName,
          builder: (context, state) => const JoinScreen(),
        ),
        GoRoute(
          path: '/',
          name: HomeScreen.routeName,
          builder: (context, state) => HomeScreen(
            initialIndex:
                int.tryParse(state.uri.queryParameters['initialIndex'] ?? ''),
            searchValue: state.uri.queryParameters['searchValue'],
          ),
          routes: [
            GoRoute(
              path: 'push',
              name: PushScreen.routeName,
              builder: (context, state) => const PushScreen(),
            ),
            GoRoute(
              path: 'search',
              name: SearchScreen.routeName,
              builder: (context, state) => SearchScreen(
                value: state.extra as String,
              ),
              routes: [
                GoRoute(
                  path: 'book',
                  name: BookSearchScreen.routeName,
                  builder: (context, state) => BookSearchScreen(
                    value: state.extra as String,
                  ),
                ),
                GoRoute(
                  path: 'user',
                  name: UserSearchScreen.routeName,
                  builder: (context, state) => UserSearchScreen(
                    value: state.extra as String,
                  ),
                ),
              ],
            ),
            GoRoute(
              path: 'bookforest',
              name: BookForestListScreen.routeName,
              builder: (context, state) => BookForestListScreen(
                value: state.uri.queryParameters['value'],
                option: BookForestOptions.name(
                    state.uri.queryParameters['option']!),
              ),
            ),
            GoRoute(
              path: 'best-seller',
              name: BestSellerScreen.routeName,
              builder: (context, state) => const BestSellerScreen(),
            ),
            GoRoute(
              path: 'book-recommend',
              name: BookRecommedScreen.routeName,
              builder: (context, state) => const BookRecommedScreen(),
            ),
            GoRoute(
              path: 'book/:id',
              name: BookDetailScreen.routeName,
              builder: (context, state) => BookDetailScreen(
                id: state.pathParameters['id']!,
              ),
            ),
          ],
        ),
      ],
      navigatorKey: navigatorKey,
      refreshListenable: refreshListenable,
      redirect: (_, state) async {
        return null;
      },
    );
  },
);
