import 'package:flutter/cupertino.dart';

class CompactMediaCardBackground extends StatelessWidget {
  const CompactMediaCardBackground({
    super.key,
    required this.logo,
  });

  final String logo;

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
              CupertinoColors.black.withOpacity(0.75),
              CupertinoColors.black.withOpacity(0.75),
            ],
            stops: const [0.0, 1.0],
          ).createShader(bounds);
        },
        child: Image.network(
          'https://image.tmdb.org/t/p/w500/$logo',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
