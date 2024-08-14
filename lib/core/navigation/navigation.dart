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
        return AppRoutes.home.path;
      }

      return null;
    },
    routes: [
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
        ],
      ),
    ],
  );
}
