import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/lists/expanded/expanded_media_card.dart';
import 'package:movies_app/core/widgets/media/lists/media_list.dart';
import 'package:movies_app/core/widgets/responsive/responsive_mixin.dart';

class ExpandedMediaList extends StatelessWidget with Responsive<int> {
  const ExpandedMediaList({
    super.key,
    required this.header,
    required this.cards,
    this.grid = false,
  });

  final bool grid;

  final String header;

  final List<ExpandedMediaCardData> cards;

  @override
  int get small => 2;

  @override
  int? get medium => 3;

  @override
  int? get large => 4;

  @override
  int? get xlarge => 5;

  @override
  Widget build(BuildContext context) {
    return MediaList(
      header: header,
      grid: grid,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: responsive(context),
        mainAxisExtent: 455,
      ),
      children: [
        for (final ExpandedMediaCardData card in cards) ...{
          ExpandedMediaCard(data: card),
        },
      ],
    );
  }
}
