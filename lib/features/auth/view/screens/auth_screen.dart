import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/features/auth/view/widgets/auth_screen/auth_app_bar.dart';
import 'package:movies_app/features/auth/view/widgets/auth_screen/auth_backdrop.dart';
import 'package:movies_app/features/auth/view/widgets/auth_screen/auth_media_list.dart';
import 'package:movies_app/features/auth/view/widgets/auth_screen/auth_media_slider.dart';
import 'package:movies_app/features/auth/view/widgets/auth_screen/auth_registration_form.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectionArea(
      child: CupertinoPageScaffold(
        child: CupertinoScrollbar(
          child: SingleChildScrollView(
            primary: true,
            child: Stack(
              children: [
                AuthBackdrop(),
                Column(
                  children: [
                    AuthAppBar(),
                    AuthRegistrationForm(),
                    AuthMediaList(),
                    SizedBox(height: 40),
                    AuthMediaSlider(),
                    SizedBox(height: 100),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
