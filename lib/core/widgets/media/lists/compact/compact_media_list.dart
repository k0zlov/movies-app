import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/lists/compact/compact_media_card.dart';
import 'package:movies_app/core/widgets/media/lists/list_header.dart';

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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MediaListHeader(
          text: 'For you',
          onPressed: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            children: [
              const SizedBox(width: 20),
              for (final CompactMediaCardData card in cards) ...{
                const SizedBox(width: 20),
                CompactMediaCard(data: card),
              },
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}
