import 'package:flutter/cupertino.dart';

class MediaGenresString extends StatelessWidget {
  const MediaGenresString({
    super.key,
    required this.genres,
  });

  final List<String> genres;

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: CupertinoColors.systemGrey,
          fontWeight: FontWeight.w100,
        );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < genres.length; i++) ...{
          Text(genres[i], style: textStyle),
          if (i + 1 != genres.length) ...{
            Text('  ·  ', style: textStyle),
          },
        },
      ],
    );
  }
}
