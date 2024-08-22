import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/backdrop.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/genres_string.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/media_description.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/media_logo.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/options_row.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/short_info_string.dart';
import 'package:movies_app/core/widgets/responsive/responsive_mixin.dart';

class MainMediaInfoHeaderData {
  const MainMediaInfoHeaderData({
    required this.isAdult,
    required this.genres,
    required this.backdrop,
    required this.logo,
    required this.description,
    required this.shortMediaStringData,
  });

  final bool isAdult;

  final String logo;

  final String backdrop;

  final List<String> genres;

  final String description;

  final ShortMediaStringData shortMediaStringData;
}

class MainMediaInfoHeader extends StatelessWidget with Responsive<bool> {
  const MainMediaInfoHeader({
    super.key,
    required this.data,
  });

  final MainMediaInfoHeaderData data;

  @override
  bool get small => true;

  @override
  bool? get medium => false;

  @override
  Widget build(BuildContext context) {
    final small = responsive(context);

    return Stack(
      children: [
        MediaBackdrop(picture: data.backdrop),
        Padding(
          padding: EdgeInsets.only(left: small ? 0 : 40, top: 80, bottom: 15),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .55,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment:
                  small ? CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [
                const MediaLogo(logo: '/jXLNOzeEA8AoJy92dJTUUZXTMxK.png'),
                const SizedBox(height: 14),
                ShortMediaInfoString(data: data.shortMediaStringData),
                const SizedBox(height: 14),
                MainMediaHeaderDescription(
                  data.description,
                  textAlign: small ? TextAlign.center : TextAlign.left,
                ),
                const SizedBox(height: 40),
                MediaOptionsRow(
                  isAdult: data.isAdult,
                  showRightSide: !small,
                ),
                const SizedBox(height: 14),
                MediaGenresString(genres: data.genres),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
