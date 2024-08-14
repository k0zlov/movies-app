import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/resources/images.dart';

///
class LogoButton extends StatelessWidget {
  /// Default constructor for [LogoButton]
  const LogoButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Image.asset(
        AppImages.moviesLogo,
      ),
    );
  }
}
