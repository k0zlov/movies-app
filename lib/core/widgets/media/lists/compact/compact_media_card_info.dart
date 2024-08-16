import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/lists/card_title_option.dart';
import 'package:movies_app/core/widgets/media/media_screen/short_info_string.dart';

class CompactMediaCardInfo extends StatelessWidget {
  const CompactMediaCardInfo({
    super.key,
    required this.title,
    required this.shortMediaStringData,
  });

  final String title;

  final ShortMediaStringData shortMediaStringData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MediaCardTitleOption(
          title: title,
          onPressed: () {},
        ),
        ShortMediaInfoString(
          data: shortMediaStringData,
        ),
      ],
    );
  }
}
