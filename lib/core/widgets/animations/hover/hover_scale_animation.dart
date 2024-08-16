import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/animations/hover/hover_animation_builder.dart';

class HoverAnimation extends StatelessWidget {
  const HoverAnimation({
    required this.child,
    super.key,
    this.duration = const Duration(milliseconds: 180),
    this.scaleAnimation = false,
    this.opacityAnimation = false,
    this.scale = 1.03,
    this.opacity = 0.9,
    this.baseScale = 1,
    this.baseOpacity = 1,
  });

  final bool scaleAnimation;

  final bool opacityAnimation;

  final double scale;

  final double baseScale;

  final double opacity;

  final double baseOpacity;

  final Widget child;

  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return HoverAnimationBuilder(
      builder: (context, hovered) {
        Widget widget = child;

        if (scaleAnimation) {
          widget = AnimatedScale(
            scale: hovered ? scale : baseScale,
            duration: duration,
            child: widget,
          );
        }

        if (opacityAnimation) {
          final double op = hovered ? opacity : baseOpacity;

          widget = AnimatedOpacity(
            opacity: op.clamp(0, 1),
            duration: duration,
            child: widget,
          );
        }

        return widget;
      },
    );
  }
}
