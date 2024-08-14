import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/application.dart';
import 'package:movies_app/core/widgets/navigation_bar/navigation_bar_delegate.dart';
import 'package:movies_app/features/home/view/screens/home_screen.dart';

class ScreenFactory {
  ScreenFactory._();

  static Widget renderApplication() {
    return const Application();
  }

  static Widget renderNavigationBar({
    required StatefulNavigationShell navigationShell,
  }) {
    return NavigationBarDelegate(shell: navigationShell);
  }

  static Widget renderHomeScreen() {
    return const HomeScreen();
  }
}
