import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/buttons/explore_all_button.dart';
import 'package:movies_app/core/widgets/responsive/responsive_text.dart';

class MediaListHeader extends StatelessWidget {
  const MediaListHeader({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: CupertinoColors.white,
          fontSize: 30,
        );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ResponsiveText(
            minScale: 0.6,
            text: Text(text, style: textStyle),
          ),
          ExploreAllButton(
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
