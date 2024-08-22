import 'package:flutter/cupertino.dart';

class MediaSliderButton extends StatelessWidget {
  const MediaSliderButton({
    super.key,
    required this.previous,
    required this.onPressed,
  });

  final bool previous;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final Color color = CupertinoColors.systemGrey.withOpacity(0.6);

    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: color,
          fontWeight: FontWeight.w700,
        );

    return SelectionContainer.disabled(
      child: CupertinoButton(
        onPressed: onPressed,
        child: Row(
          children: [
            if (previous) ...{
              Icon(CupertinoIcons.chevron_back, color: color),
            },
            Text(previous ? 'Previous' : 'Next', style: textStyle),
            if (!previous) ...{
              Icon(CupertinoIcons.chevron_right, color: color),
            },
          ],
        ),
      ),
    );
  }
}
