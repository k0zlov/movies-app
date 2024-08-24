import 'package:flutter/cupertino.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.active = true,
  });

  final bool active;

  final String title;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: active ? CupertinoColors.white : CupertinoColors.systemGrey,
          fontSize: 16,
          fontWeight: FontWeight.w300,
        );

    return SelectionContainer.disabled(
      child: SizedBox(
        height: 45,
        width: 400,
        child: CupertinoButton(
          onPressed: active ? onPressed : null,
          color: CupertinoColors.destructiveRed,
          padding: EdgeInsets.zero,
          child: Text(title, style: textStyle),
        ),
      ),
    );
  }
}
