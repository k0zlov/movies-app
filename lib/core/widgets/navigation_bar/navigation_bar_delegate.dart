import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/widgets/navigation_bar/compact/compact_navigation_bar.dart';
import 'package:movies_app/core/widgets/navigation_bar/expanded/expanded_navigation_bar.dart';

class NavigationBarDelegate extends StatelessWidget {
  const NavigationBarDelegate({
    super.key,
    required this.shell,
  });

  final StatefulNavigationShell shell;

  bool isTablet(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return width >= 600;
  }

  @override
  Widget build(BuildContext context) {
    return isTablet(context)
        ? ExpandedNavigationBar(shell: shell)
        : CompactNavigationBar(shell: shell);
  }
}
