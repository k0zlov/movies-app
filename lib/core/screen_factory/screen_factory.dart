import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/application.dart';
import 'package:movies_app/core/widgets/navigation_bar/navigation_bar_delegate.dart';
import 'package:movies_app/di_container.dart';
import 'package:movies_app/features/auth/view/cubit/auth_cubit.dart';
import 'package:movies_app/features/auth/view/screens/confirmation_screen.dart';
import 'package:movies_app/features/auth/view/screens/initial_screen.dart';
import 'package:movies_app/features/auth/view/screens/login_screen.dart';
import 'package:movies_app/features/auth/view/screens/registration_screen.dart';
import 'package:movies_app/features/errors/view/cubit/error_cubit.dart';
import 'package:movies_app/features/home/view/screens/profile_screen.dart';

class ScreenFactory {
  ScreenFactory._();

  static Widget renderApplication() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ErrorCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<AuthCubit>(),
        ),
      ],
      child: const Application(),
    );
  }

  static Widget renderInitialScreen() {
    return const InitialScreen();
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
