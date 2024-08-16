import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/animations/hover/hover_scale_animation.dart';
import 'package:movies_app/core/widgets/responsive/responsive_text.dart';

class ExploreAllButton extends StatelessWidget {
  const ExploreAllButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final Color color = CupertinoColors.systemGrey.withOpacity(0.4);

    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: color,
          fontSize: 16.5,
        );

    return HoverAnimation(
      scaleAnimation: true,
      child: CupertinoButton(
        onPressed: onPressed,
        child: Row(
          children: [
            SelectionContainer.disabled(
              child: ResponsiveText(
                text: Text('Explore All', style: textStyle),
              ),
            ),
            const SizedBox(width: 4),
            Icon(CupertinoIcons.chevron_right, color: color, size: 14),
          ],
        ),
      ),
    );
  }
}
