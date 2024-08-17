import 'package:flutter/cupertino.dart';

class MediaCardDescription extends StatelessWidget {
  const MediaCardDescription(
    this.description, {
    this.maxLines = 5,
    super.key,
  });

  final int maxLines;

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Text(
            description,
            overflow: TextOverflow.ellipsis,
            maxLines: maxLines,
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  fontSize: 14,
                  color: CupertinoColors.systemGrey,
                ),
          ),
        ),
      ],
    );
  }
}
