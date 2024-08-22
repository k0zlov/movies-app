import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/navigation/routes.dart';
import 'package:movies_app/core/screen_factory/screen_factory.dart';

class AppNavigation {
  AppNavigation._();

  static final navigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/',
    redirect: (BuildContext context, GoRouterState state) {
      final String location = state.matchedLocation;

      if (location == '/') {
        return AppRoutes.auth.path;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: AppRoutes.auth.path,
        name: AppRoutes.auth.name,
        builder: (context, state) {
          return ScreenFactory.renderAuthScreen();
        },
        routes: [
          GoRoute(
            path: AppRoutes.login.name,
            name: AppRoutes.login.name,
            builder: (context, state) {
              return ScreenFactory.renderLoginScreen();
            },
          ),
          GoRoute(
            path: AppRoutes.registration.name,
            name: AppRoutes.registration.name,
            builder: (context, state) {
              return ScreenFactory.renderRegistrationScreen();
            },
          ),
          GoRoute(
            path: AppRoutes.confirmation.name,
            name: AppRoutes.confirmation.name,
            builder: (context, state) {
              return ScreenFactory.renderConfirmationScreen();
            },
          ),
        ],
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) {
          return ScreenFactory.renderNavigationBar(
            navigationShell: shell,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.home.path,
                name: AppRoutes.home.name,
                builder: (context, GoRouterState state) {
                  return ScreenFactory.renderHomeScreen();
                },
              ),
            ],
          ),
          // StatefulShellBranch(
          //   routes: [
          //     GoRoute(
          //       path: AppRoutes.search.path,
          //       name: AppRoutes.search.name,
          //     ),
          //   ],
          // ),
          // StatefulShellBranch(
          //   routes: [
          //     GoRoute(
          //       path: AppRoutes.library.path,
          //       name: AppRoutes.library.name,
          //     ),
          //   ],
          // ),
          // StatefulShellBranch(
          //   routes: [
          //     GoRoute(
          //       path: AppRoutes.account.path,
          //       name: AppRoutes.account.name,
          //       routes: [
          //         GoRoute(
          //           path: AppRoutes.settings.name,
          //           name: AppRoutes.settings.name,
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // StatefulShellBranch(
          //   routes: [
          //     GoRoute(
          //       path: AppRoutes.media.path,
          //       name: AppRoutes.media.name,
          //     ),
          //     GoRoute(
          //       path: AppRoutes.person.path,
          //       name: AppRoutes.person.name,
          //     ),
          //     GoRoute(
          //       path: AppRoutes.profile.path,
          //       name: AppRoutes.profile.name,
          //     ),
          //   ],
          // ),
        ],
      ),
    ],
  );
}
