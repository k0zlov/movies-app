import 'package:flutter/cupertino.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context)
        .textTheme
        .textStyle
        .copyWith(color: CupertinoColors.black.withOpacity(0.4));

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 190,
        maxWidth: 400,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .3,
        child: CupertinoTextField(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: CupertinoColors.white,
          ),
          placeholder: 'Email address',
          placeholderStyle: textStyle,
          style: textStyle.copyWith(
            color: CupertinoColors.black.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}
