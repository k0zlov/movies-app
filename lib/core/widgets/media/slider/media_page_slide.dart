import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/network/api_endpoints.dart';
import 'package:movies_app/core/widgets/media/lists/media_card_backdrop.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/genres_string.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/main_info_header.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/media_description.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/media_logo.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/short_info_string.dart';

class MediaPageSlide extends StatelessWidget {
  const MediaPageSlide({
    super.key,
    required this.data,
  });

  final MainMediaInfoHeaderData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: 10,
      ),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          MediaCardBackdrop(
            fit: BoxFit.cover,
            pictureUrl: '${ApiEndpoints.imageLarge}/${data.backdrop}',
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MediaLogo(logo: data.logo, width: 280),
                const SizedBox(height: 16),
                ShortMediaInfoString(data: data.shortMediaStringData),
                const SizedBox(height: 16),
                MainMediaHeaderDescription(data.description,),
                const SizedBox(height: 16),
                MediaGenresString(genres: data.genres),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
