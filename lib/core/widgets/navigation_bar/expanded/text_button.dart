import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/animations/hover/hover_scale_animation.dart';

class ExpandedNavBarTextButton extends StatelessWidget {
  const ExpandedNavBarTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.textStyle,
    required this.selected,
    required this.showChevron,
  });

  final bool selected;

  final bool showChevron;

  final String text;

  final TextStyle textStyle;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return HoverAnimation(
      scaleAnimation: true,
      child: CupertinoButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            if (selected && showChevron) ...{
              const Icon(
                CupertinoIcons.chevron_down,
                size: 12,
                color: CupertinoColors.white,
              ),
            },
            const SizedBox(width: 4),
            Text(
              text,
              style: textStyle.copyWith(
                fontWeight: selected ? FontWeight.w800 : FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
