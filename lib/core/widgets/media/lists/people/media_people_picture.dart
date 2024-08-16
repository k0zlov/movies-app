import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/network/api_endpoints.dart';

class MediaPeoplePicture extends StatelessWidget {
  const MediaPeoplePicture({
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
            CupertinoColors.black.withOpacity(0.9),
            CupertinoColors.black,
            CupertinoColors.black.withOpacity(0.9),
          ],
          stops: const [0.0, 0.5, 1.0],
        ).createShader(bounds);
      },
      child: CircleAvatar(
        radius: 78,
        backgroundImage: NetworkImage(
          '${ApiEndpoints.imageLow}/$picture',
        ),
      ),
    );
  }
}
