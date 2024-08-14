import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/widgets/navigation_bar/expanded/text_button.dart';

class ExpandedNavBarMenuPopUp extends StatefulWidget {
  const ExpandedNavBarMenuPopUp({
    super.key,
    required this.menuItems,
  });

  final Map<String, void Function(BuildContext context)> menuItems;

  @override
  State<ExpandedNavBarMenuPopUp> createState() =>
      _ExpandedNavBarMenuPopUpState();
}

class _ExpandedNavBarMenuPopUpState extends State<ExpandedNavBarMenuPopUp>
    with SingleTickerProviderStateMixin {
  late final Animation<double> _animation;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 220,
      ),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final items = widget.menuItems.entries.toList();

    return PopScope(
      onPopInvokedWithResult: (_, __) {
        _controller.reverse();
      },
      child: GestureDetector(
        onTap: () => context.pop(),
        child: ColoredBox(
          color: CupertinoColors.darkBackgroundGray.withOpacity(0.4),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: [
                    for (int i = 0; i < items.length; i++) ...{
                      Positioned(
                        top: 40 + _animation.value * (i * 85),
                        child: ExpandedNavBarTextButton(
                          text: items[i].key,
                          onPressed: () => items[i].value(context),
                          textStyle:
                              CupertinoTheme.of(context).textTheme.textStyle,
                          selected: false,
                          showChevron: false,
                        ),
                      ),
                    },
                    Positioned(
                      top: 10 + _animation.value * (items.length * 85),
                      child: CupertinoButton(
                        child: const Icon(
                          CupertinoIcons.clear,
                          color: CupertinoColors.white,
                        ),
                        onPressed: () => context.pop(),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
