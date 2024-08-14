import 'package:flutter/cupertino.dart';

class MediaWatchButton extends StatelessWidget {
  const MediaWatchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          fontWeight: FontWeight.w600,
          color: CupertinoColors.black,
        );

    return CupertinoButton(
      onPressed: () {},
      color: CupertinoColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 2),
      borderRadius: BorderRadius.circular(25),
      child: Row(
        children: [
          const Icon(CupertinoIcons.play_fill),
          const SizedBox(width: 10),
          Text('Watch trailer', style: textStyle),
        ],
      ),
    );
  }
}
