import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/animations/hover_scale_animation.dart';

class ImdbLogoButton extends StatelessWidget {
  const ImdbLogoButton({
    super.key,
    required this.onPressed,
    this.fontSize = 15,
    this.padding = const EdgeInsets.all(4),
  });

  final double fontSize;

  final EdgeInsets padding;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: CupertinoColors.black,
          fontSize: fontSize,
          fontWeight: FontWeight.w900,
          decoration: TextDecoration.underline,
        );

    return HoverScaleAnimation(
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: CupertinoColors.systemYellow,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            'IMDb',
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
