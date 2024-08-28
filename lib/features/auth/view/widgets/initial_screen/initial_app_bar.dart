import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/navigation/routes.dart';
import 'package:movies_app/core/widgets/buttons/logo_button.dart';
import 'package:movies_app/features/auth/view/widgets/initial_screen/initial_button.dart';

class InitialScreenAppBar extends StatelessWidget {
  const InitialScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            LogoButton(
              onPressed: () {},
            ),
            InitialScreenButton(
              title: 'Sign in',
              onPressed: () => context.goNamed(AppRoutes.login.name),
            ),
          ],
        ),
      ),
    );
  }
}
