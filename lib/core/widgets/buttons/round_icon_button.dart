import 'package:flutter/cupertino.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.iconData,
    required this.onPressed,
    this.opacity = 0.75,
    this.color = CupertinoColors.darkBackgroundGray,
  });

  final double opacity;

  final Color color;

  final IconData iconData;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(12),
      borderRadius: BorderRadius.circular(25),
      color: color.withOpacity(opacity),
      onPressed: onPressed,
      child: Icon(
        iconData,
        color: CupertinoColors.white,
      ),
    );
  }
}
