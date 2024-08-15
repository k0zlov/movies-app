import 'package:flutter/cupertino.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText({
    required this.text,
    this.minScale = 0.8,
    this.maxScale = 1.1,
    super.key,
  });

  final Text text;
  final double minScale;
  final double maxScale;

  double _calculateScale(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final scale = minScale + (maxScale - minScale) * (screenWidth / 1024);

    return scale.clamp(minScale, maxScale);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text.data ?? '',
      style: text.style,
      textAlign: text.textAlign,
      maxLines: text.maxLines,
      overflow: text.overflow,
      softWrap: text.softWrap,
      textDirection: text.textDirection,
      locale: text.locale,
      textScaler: TextScaler.linear(_calculateScale(context)),
      strutStyle: text.strutStyle,
      textWidthBasis: text.textWidthBasis,
      textHeightBehavior: text.textHeightBehavior,
    );
  }
}
