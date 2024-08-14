import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/navigation_bar/expanded/menu_pop_up.dart';
import 'package:movies_app/core/widgets/navigation_bar/expanded/text_button.dart';

class ExpandedNavBarMenuRow extends StatelessWidget {
  ExpandedNavBarMenuRow({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  final Map<String, void Function(BuildContext context)> menuItems = {
    'Home': (c) {},
    'New & Popular': (c) {},
    'My List': (c) {},
    'Collections': (c) {},
    'Friends': (c) {},
  };

  double calculatePosition(int index, TextStyle textStyle) {
    double width = 0;

    if (index == 0) {
      return width;
    }

    for (int i = index - 1; i >= 0; i--) {
      final textPainter = TextPainter(
        text: TextSpan(
          text: menuItems.entries.toList()[i].key,
          style: textStyle,
        ),
        maxLines: 1,
        textDirection: TextDirection.ltr,
      )..layout();

      width += textPainter.width + 24;
    }

    return width;
  }

  void popUpMenu(BuildContext context) {
    final MapEntry<String, Function> currentItem =
        menuItems.entries.toList()[currentIndex];

    final tempItems = {...menuItems}..remove(currentItem.key);

    showCupertinoDialog<bool>(
      context: context,
      builder: (context) {
        return ExpandedNavBarMenuPopUp(
          menuItems: tempItems,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          fontWeight: FontWeight.w300,
        );

    final bool shouldShrink = MediaQuery.of(context).size.width < 850;

    return SizedBox(
      width: 500,
      height: 40,
      child: Stack(
        children: [
          for (int i = 0; i < menuItems.length; i++) ...{
            AnimatedPositioned(
              left: shouldShrink ? 220 : calculatePosition(i, textStyle),
              duration: const Duration(milliseconds: 260),
              child: AnimatedOpacity(
                opacity: i != currentIndex && shouldShrink ? 0 : 1,
                duration: const Duration(milliseconds: 180),
                child: IgnorePointer(
                  ignoring: shouldShrink && currentIndex != i,
                  child: ExpandedNavBarTextButton(
                    selected: currentIndex == i,
                    showChevron: shouldShrink,
                    text: menuItems.entries.toList()[i].key,
                    textStyle: textStyle,
                    onPressed: currentIndex == i && shouldShrink
                        ? () => popUpMenu(context)
                        : () => menuItems.entries.toList()[i].value(context),
                  ),
                ),
              ),
            ),
          },
        ],
      ),
    );
  }
}
