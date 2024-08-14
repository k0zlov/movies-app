import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/buttons/round_icon_button.dart';
import 'package:movies_app/core/widgets/media/media_screen/watch_trailer_button.dart';

class MediaOptionsRow extends StatelessWidget {
  const MediaOptionsRow({
    super.key,
    required this.isAdult,
  });

  final bool isAdult;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const _LeftSide(),
        _RightSide(isAdult: isAdult),
      ],
    );
  }
}

class _LeftSide extends StatelessWidget {
  const _LeftSide();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundIconButton(
          iconData: CupertinoIcons.heart,
          onPressed: () {},
        ),
        const SizedBox(width: 10),
        const MediaWatchButton(),
        const SizedBox(width: 10),
        RoundIconButton(
          iconData: CupertinoIcons.add,
          onPressed: () {},
        ),
        const SizedBox(width: 10),
        RoundIconButton(
          iconData: CupertinoIcons.play,
          onPressed: () {},
        ),
      ],
    );
  }
}

class _RightSide extends StatelessWidget {
  const _RightSide({required this.isAdult});

  final bool isAdult;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundIconButton(
          iconData: CupertinoIcons.volume_off,
          onPressed: () {},
        ),
        const SizedBox(width: 10),
        if (isAdult) ...{
          Container(
            width: 100,
            height: 45,
            color: CupertinoColors.darkBackgroundGray.withOpacity(0.75),
            padding: const EdgeInsets.only(left: 12),
            alignment: Alignment.centerLeft,
            child: const Text('18+'),
          ),
        },
      ],
    );
  }
}
