import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/network/api_endpoints.dart';

class MediaBackdrop extends StatelessWidget {
  const MediaBackdrop({
    super.key,
    required this.picture,
  });

  final String picture;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.dstIn,
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            CupertinoColors.transparent,
            CupertinoColors.black.withOpacity(0.6),
            CupertinoColors.black,
            CupertinoColors.black.withOpacity(0.6),
            CupertinoColors.transparent,
          ],
          stops: const [0.0, 0.2, 0.4, 0.8, 1.0],
        ).createShader(bounds);
      },
      child: Image.network(
        '${ApiEndpoints.imageLarge}/$picture',
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .68,
        fit: BoxFit.cover,
      ),
    );
  }
}
