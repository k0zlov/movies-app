import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/features/auth/view/widgets/registration_screen/registration_app_bar.dart';
import 'package:movies_app/features/auth/view/widgets/registration_screen/registration_form.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectionArea(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        child: Center(
          child: Column(
            children: [
              RegistrationAppBar(),
              RegistrationForm(),
            ],
          ),
        ),
      ),
    );
  }
}
