import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/animations/hover/hover_scale_animation.dart';
import 'package:movies_app/core/widgets/responsive/responsive_mixin.dart';

class RoundIconButton extends StatelessWidget with Responsive<double> {
  const RoundIconButton({
    required this.iconData,
    required this.onPressed,
    this.shouldResize = true,
    this.size = 45,
    this.opacity = 0.4,
    this.color = CupertinoColors.darkBackgroundGray,
    super.key,
  });

  final bool shouldResize;

  final double size;

  final double opacity;

  final Color color;

  final IconData iconData;

  final void Function() onPressed;

  @override
  double get small => size * 0.9;

  @override
  double get medium => size * .95;

  @override
  double? get large => size;

  @override
  Widget build(BuildContext context) {
    return HoverAnimation(
      scaleAnimation: true,
      opacityAnimation: true,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        minSize: responsive(context),
        borderRadius: BorderRadius.circular(25),
        color: color.withOpacity(opacity),
        onPressed: onPressed,
        child: Icon(
          iconData,
          color: CupertinoColors.white,
          size: size * 0.6,
        ),
      ),
    );
  }
}
