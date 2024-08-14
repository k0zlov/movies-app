import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/navigation/navigation.dart';
import 'package:movies_app/core/resources/theme.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      title: 'Movies',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getTheme(),
      routerConfig: AppNavigation.router,
    );
  }
}
