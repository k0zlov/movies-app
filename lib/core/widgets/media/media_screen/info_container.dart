import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/media_screen/genres_string.dart';
import 'package:movies_app/core/widgets/media/media_screen/media_description.dart';
import 'package:movies_app/core/widgets/media/media_screen/media_logo.dart';
import 'package:movies_app/core/widgets/media/media_screen/options_row.dart';
import 'package:movies_app/core/widgets/media/media_screen/short_info_string.dart';

class MediaContainerData {
  const MediaContainerData({
    required this.isAdult,
    required this.genres,
    required this.logoUrl,
    required this.description,
    required this.shortMediaStringData,
  });

  final bool isAdult;

  final String logoUrl;

  final List<String> genres;

  final String description;

  final ShortMediaStringData shortMediaStringData;
}

class MediaInfoContainer extends StatelessWidget {
  const MediaInfoContainer({
    super.key,
    required this.data,
  });

  final MediaContainerData data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .55,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MediaLogo(),
          const SizedBox(height: 14),
          ShortMediaInfoString(data: data.shortMediaStringData),
          const SizedBox(height: 14),
          MediaDescription(data.description),
          const SizedBox(height: 40),
          MediaOptionsRow(isAdult: data.isAdult),
          const SizedBox(height: 14),
          MediaGenresString(genres: data.genres),
        ],
      ),
    );
  }
}
