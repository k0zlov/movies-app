import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/buttons/round_icon_button.dart';

class MediaCardTitleOption extends StatelessWidget {
  const MediaCardTitleOption({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              style: textStyle.copyWith(
                fontSize: 28,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        RoundIconButton(
          size: 32,
          shouldResize: false,
          iconData: CupertinoIcons.add,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
