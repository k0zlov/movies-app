import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/navigation/routes.dart';
import 'package:movies_app/core/widgets/buttons/logo_button.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({
    super.key,
    required this.trailing,
  });

  final AuthAppBarTrailingButton trailing;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'authAppBar',
      child: Container(
        height: 80,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03,
        ),
        decoration: const BoxDecoration(
          color: CupertinoColors.white,
          border: Border(
            bottom: BorderSide(
              color: CupertinoColors.systemGrey,
              width: 0.3,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LogoButton(
              onPressed: () => context.goNamed(AppRoutes.auth.name),
            ),
            trailing,
          ],
        ),
      ),
    );
  }
}

class AuthAppBarTrailingButton extends StatelessWidget {
  const AuthAppBarTrailingButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: CupertinoColors.black.withOpacity(0.95),
        );

    return SelectionContainer.disabled(
      child: CupertinoButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: Text(title, style: textStyle),
      ),
    );
  }
}
