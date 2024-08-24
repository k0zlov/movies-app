import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/features/auth/view/widgets/login_screen/login_app_bar.dart';
import 'package:movies_app/features/auth/view/widgets/login_screen/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectionArea(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        child: Center(
          child: Column(
            children: [
              LoginAppBar(),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
