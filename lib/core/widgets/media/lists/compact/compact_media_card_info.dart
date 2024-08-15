import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/buttons/round_icon_button.dart';
import 'package:movies_app/core/widgets/media/media_screen/short_info_string.dart';

class CompactMediaCardInfo extends StatelessWidget {
  const CompactMediaCardInfo({
    super.key,
    required this.title,
    required this.shortMediaStringData,
  });

  final String title;

  final ShortMediaStringData shortMediaStringData;

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
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
              onPressed: () {},
            ),
          ],
        ),
        ShortMediaInfoString(
          data: shortMediaStringData,
        ),
      ],
    );
  }
}
