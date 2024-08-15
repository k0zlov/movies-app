import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/resources/images.dart';
import 'package:movies_app/core/widgets/animations/hover_scale_animation.dart';

class LogoButton extends StatelessWidget {
  /// Default constructor for [LogoButton]
  const LogoButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return HoverScaleAnimation(
      scale: 1.1,
      child: CupertinoButton(
        onPressed: onPressed,
        child: Image.asset(
          AppImages.moviesLogo,
        ),
      ),
    );
  }
}
