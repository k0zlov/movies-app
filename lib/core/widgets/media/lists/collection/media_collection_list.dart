import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/lists/collection/media_collection_card.dart';
import 'package:movies_app/core/widgets/media/lists/media_list.dart';

class MediaCollectionList extends StatelessWidget {
  const MediaCollectionList({
    super.key,
    required this.header,
    required this.cards,
  });

  final String header;

  final List<MediaCollectionCardData> cards;

  @override
  Widget build(BuildContext context) {
    return MediaList(
      header: header,
      children: [
        for(final MediaCollectionCardData card in cards) ...{
          MediaCollectionCard(data: card),
        },
      ],
    );
  }
}
