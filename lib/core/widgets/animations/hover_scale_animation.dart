import 'package:flutter/cupertino.dart';

class HoverScaleAnimation extends StatefulWidget {
  const HoverScaleAnimation({
    required this.child,
    this.duration = const Duration(milliseconds: 180),
    this.scale = 1.03,
    super.key,
  });

  final double scale;

  final Widget child;

  final Duration duration;

  @override
  State<HoverScaleAnimation> createState() => _HoverScaleAnimationState();
}

class _HoverScaleAnimationState extends State<HoverScaleAnimation> {
  bool _hovered = false;

  void _setHover(bool value) {
    if (value == _hovered) return;

    _hovered = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => _setHover(true),
      onExit: (_) => _setHover(false),
      child: AnimatedScale(
        scale: _hovered ? widget.scale : 1,
        duration: widget.duration,
        child: widget.child,
      ),
    );
  }
}
