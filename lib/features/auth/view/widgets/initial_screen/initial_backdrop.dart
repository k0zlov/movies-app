import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/resources/images.dart';

class InitialScreenBackdrop extends StatelessWidget {
  const InitialScreenBackdrop({super.key});

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
      child: Image.asset(
        AppImages.authBackdrop,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .68,
        fit: BoxFit.cover,
      ),
    );
  }
}
