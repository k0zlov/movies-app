import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/lists/compact/compact_media_card.dart';
import 'package:movies_app/core/widgets/media/lists/media_list.dart';

class CompactMediaList extends StatelessWidget {
  const CompactMediaList({
    super.key,
    required this.header,
    required this.cards,
  });

  final String header;
  final List<CompactMediaCardData> cards;

  @override
  Widget build(BuildContext context) {
    return MediaList(
      header: header,
      children: [
        for (final CompactMediaCardData card in cards) ...{
          CompactMediaCard(data: card),
        },
      ],
    );
  }
}
