import 'package:flutter/cupertino.dart';

class HoverAnimationBuilder extends StatefulWidget {
  const HoverAnimationBuilder({
    super.key,
    required this.builder,
  });

  final Widget Function(BuildContext context, bool hovered) builder;

  @override
  State<HoverAnimationBuilder> createState() => _HoverAnimationBuilderState();
}

class _HoverAnimationBuilderState extends State<HoverAnimationBuilder> {
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
      child: widget.builder(context, _hovered),
    );
  }
}
