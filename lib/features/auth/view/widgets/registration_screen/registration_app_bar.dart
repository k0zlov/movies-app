import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/navigation/routes.dart';
import 'package:movies_app/features/auth/view/widgets/auth_app_bar.dart';

class RegistrationAppBar extends StatelessWidget {
  const RegistrationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60),
      child: AuthAppBar(
        trailing: AuthAppBarTrailingButton(
          title: 'Sign in',
          onPressed: () => context.goNamed(AppRoutes.login.name),
        ),
      ),
    );
  }
}
