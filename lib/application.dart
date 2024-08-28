import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/navigation/navigation.dart';
import 'package:movies_app/core/resources/theme.dart';
import 'package:movies_app/features/errors/view/screens/error_screen_wrapper.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      title: 'Movies',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getTheme(),
      routerConfig: AppNavigation.router,
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
      ],
      builder: (context, child) {
        return Overlay(
          initialEntries: [
            OverlayEntry(
              builder: (context) => SelectionArea(
                child: ErrorScreenWrapper(child: child),
              ),
            ),
          ],
        );
      },
    );
  }
}
