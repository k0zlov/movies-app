import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/lists/media_list.dart';
import 'package:movies_app/core/widgets/media/lists/people/media_people_card.dart';

class MediaPeopleList extends StatelessWidget {
  const MediaPeopleList({
    super.key,
    required this.header,
    required this.cards,
  });

  final String header;

  final List<MediaPeopleCardData> cards;

  @override
  Widget build(BuildContext context) {
    return MediaList(
      header: header,
      spacing: 40,
      children: [
        for (final MediaPeopleCardData card in cards) ...{
          MediaPeopleCard(data: card),
        },
      ],
    );
  }
}
