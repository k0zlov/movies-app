import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CompactNavigationBar extends StatelessWidget {
  const CompactNavigationBar({
    super.key,
    required this.shell,
  });

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    return shell;
  }
}
