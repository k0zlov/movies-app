import 'package:flutter/cupertino.dart';

class InitialScreenButton extends StatelessWidget {
  const InitialScreenButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: CupertinoColors.white,
        );

    return SelectionContainer.disabled(
      child: CupertinoButton(
        color: CupertinoColors.destructiveRed,
        borderRadius: BorderRadius.circular(25),
        onPressed: onPressed,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
        child: Text(title, style: textStyle),
      ),
    );
  }
}
