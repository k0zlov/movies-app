import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/widgets/buttons/logo_button.dart';
import 'package:movies_app/core/widgets/navigation_bar/expanded/icon_menu_row.dart';
import 'package:movies_app/core/widgets/navigation_bar/expanded/text_menu_row.dart';

class ExpandedNavigationBar extends StatelessWidget {
  const ExpandedNavigationBar({
    super.key,
    required this.shell,
  });

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Stack(
        children: [
          shell,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: SizedBox(
              height: 70,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: LogoButton(onPressed: () {}),
                  ),
                  Align(
                    child: ExpandedNavBarMenuRow(
                      currentIndex: shell.currentIndex,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: ExpandedNavBarIconMenuRow(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
