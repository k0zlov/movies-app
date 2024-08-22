import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/application.dart';
import 'package:movies_app/core/widgets/navigation_bar/navigation_bar_delegate.dart';
import 'package:movies_app/features/auth/view/screens/auth_screen.dart';
import 'package:movies_app/features/auth/view/screens/confirmation_screen.dart';
import 'package:movies_app/features/auth/view/screens/login_screen.dart';
import 'package:movies_app/features/auth/view/screens/registration_screen.dart';
import 'package:movies_app/features/home/view/screens/profile_screen.dart';

class ScreenFactory {
  ScreenFactory._();

  static Widget renderApplication() {
    return const Application();
  }

  static Widget renderAuthScreen() {
    return const AuthScreen();
  }

  static Widget renderRegistrationScreen() {
    return const RegistrationScreen();
  }

  static Widget renderLoginScreen() {
    return const LoginScreen();
  }

  static Widget renderConfirmationScreen() {
    return const ConfirmationScreen();
  }

  static Widget renderNavigationBar({
    required StatefulNavigationShell navigationShell,
  }) {
    return NavigationBarDelegate(shell: navigationShell);
  }

  static Widget renderHomeScreen() {
    return const ProfileScreen();
  }
}
