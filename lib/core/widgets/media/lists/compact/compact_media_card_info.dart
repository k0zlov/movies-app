import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/lists/card_title_option.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/short_info_string.dart';

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
      crossAxisAlignment: CrossAxisAlignment.start,
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
