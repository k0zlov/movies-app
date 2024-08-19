import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/animations/hover/hover_scale_animation.dart';

class MainOptionButton extends StatelessWidget {
  const MainOptionButton({
    super.key,
    required this.title,
    required this.iconData,
    required this.onPressed,
  });

  final String title;

  final IconData iconData;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          fontWeight: FontWeight.w600,
          color: CupertinoColors.black,
        );

    return HoverAnimation(
      scaleAnimation: true,
      child: CupertinoButton(
        onPressed: onPressed,
        color: CupertinoColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 2),
        borderRadius: BorderRadius.circular(25),
        child: Row(
          children: [
            Icon(iconData),
            const SizedBox(width: 10),
            SelectionContainer.disabled(
              child: Text(title, style: textStyle),
            ),
          ],
        ),
      ),
    );
  }
}
