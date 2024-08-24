import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/navigation/routes.dart';
import 'package:movies_app/features/auth/view/widgets/auth_app_bar.dart';

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60),
      child: AuthAppBar(
        trailing: AuthAppBarTrailingButton(
          title: 'Sign up',
          onPressed: () => context.goNamed(
            AppRoutes.registration.name,
          ),
        ),
      ),
    );
  }
}
