import 'package:flutter/cupertino.dart';

class ExpandedMediaCardDescription extends StatelessWidget {
  const ExpandedMediaCardDescription(
    this.description, {
    super.key,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Text(
        description,
        maxLines: 5,
        overflow: TextOverflow.ellipsis,
        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontSize: 14,
              color: CupertinoColors.systemGrey,
            ),
      ),
    );
  }
}
