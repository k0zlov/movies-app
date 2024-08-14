import 'package:flutter/material.dart';
import 'package:movies_app/core/screen_factory/screen_factory.dart';
import 'package:movies_app/di_container.dart';

Future<void> main() async {
  await registerDependencies();

  runApp(ScreenFactory.renderApplication());
}
