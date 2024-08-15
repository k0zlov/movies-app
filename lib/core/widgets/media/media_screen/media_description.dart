import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/responsive/responsive_layout.dart';
import 'package:movies_app/core/widgets/responsive/responsive_text.dart';

class MediaDescription extends StatelessWidget {
  const MediaDescription(
    this.description, {
    super.key,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      small: _ResponsiveMediaDescription(
        description,
        width: 350,
      ),
      medium: _ResponsiveMediaDescription(
        description,
        width: 400,
      ),
      large: _ResponsiveMediaDescription(
        description,
        width: 450,
      ),
    );
  }
}

class _ResponsiveMediaDescription extends StatelessWidget {
  const _ResponsiveMediaDescription(
    this.description, {
    required this.width,
  });

  final String description;

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ResponsiveText(
        text: Text(
          description,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          maxLines: 6,
        ),
      ),
    );
  }
}
