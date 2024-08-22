import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/buttons/logo_button.dart';
import 'package:movies_app/features/auth/view/widgets/auth_button.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({super.key});

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
            AuthButton(
              title: 'Sign in',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
