import 'package:flutter/cupertino.dart';

class AppTheme {
  AppTheme._();

  static CupertinoThemeData getTheme() {
    return const CupertinoThemeData(
      primaryColor: CupertinoColors.systemRed,
      scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
      brightness: Brightness.dark,
    );
  }
}
