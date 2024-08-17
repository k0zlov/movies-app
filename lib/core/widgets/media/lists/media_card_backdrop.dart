import 'package:flutter/cupertino.dart';

class MediaCardBackdrop extends StatelessWidget {
  const MediaCardBackdrop({
    super.key,
    required this.pictureUrl,
    this.opacity = 0.75,
    this.fit = BoxFit.fill,
  });

  final BoxFit fit;

  final String pictureUrl;

  final double opacity;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: ShaderMask(
        blendMode: BlendMode.dstIn,
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              CupertinoColors.black.withOpacity(opacity.clamp(0, 1)),
              CupertinoColors.black.withOpacity(opacity.clamp(0, 1)),
            ],
            stops: const [0.0, 1.0],
          ).createShader(bounds);
        },
        child: Image.network(
          pictureUrl,
          fit: fit,
        ),
      ),
    );
  }
}
