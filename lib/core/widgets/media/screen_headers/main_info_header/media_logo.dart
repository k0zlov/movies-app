import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/resources/images.dart';
import 'package:movies_app/core/widgets/responsive/responsive_layout.dart';

class MediaLogo extends StatelessWidget {
  const MediaLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      small: _ResponsiveMediaLogo(
        size: 55,
      ),
      medium: _ResponsiveMediaLogo(
        size: 65,
      ),
      large: _ResponsiveMediaLogo(
        size: 85,
      ),
    );
  }
}

class _ResponsiveMediaLogo extends StatelessWidget {
  const _ResponsiveMediaLogo({
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.arcaneLogo,
      height: size,
      fit: BoxFit.scaleDown,
    );
  }
}
