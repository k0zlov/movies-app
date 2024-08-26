import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/features/auth/view/widgets/initial_screen/get_started_form.dart';
import 'package:movies_app/features/auth/view/widgets/initial_screen/initial_app_bar.dart';
import 'package:movies_app/features/auth/view/widgets/initial_screen/initial_backdrop.dart';
import 'package:movies_app/features/auth/view/widgets/initial_screen/initial_media_list.dart';
import 'package:movies_app/features/auth/view/widgets/initial_screen/initial_media_slider.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectionArea(
      child: CupertinoPageScaffold(
        child: CupertinoScrollbar(
          child: SingleChildScrollView(
            primary: true,
            child: Stack(
              children: [
                InitialScreenBackdrop(),
                Column(
                  children: [
                    InitialScreenAppBar(),
                    GetStartedForm(),
                    InitialMediaList(),
                    SizedBox(height: 40),
                    InitialMediaSlider(),
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
