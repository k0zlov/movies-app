import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/lists/expanded/expanded_media_card.dart';
import 'package:movies_app/core/widgets/media/lists/media_list.dart';

class ExpandedMediaList extends StatelessWidget {
  const ExpandedMediaList({
    super.key,
    required this.header,
    required this.cards,
  });

  final String header;

  final List<ExpandedMediaCardData> cards;

  @override
  Widget build(BuildContext context) {
    return MediaList(
      header: header,
      children: [
        for (final ExpandedMediaCardData card in cards) ...{
          ExpandedMediaCard(data: card),
        },
      ],
    );
  }
}
