import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/network/api_endpoints.dart';
import 'package:movies_app/core/widgets/animations/hover/hover_scale_animation.dart';
import 'package:movies_app/core/widgets/media/lists/card_title_option.dart';
import 'package:movies_app/core/widgets/media/lists/media_card_backdrop.dart';
import 'package:movies_app/core/widgets/media/lists/media_card_description.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/genres_string.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/short_info_string.dart';
import 'package:movies_app/core/widgets/responsive/responsive_mixin.dart';

class ExpandedMediaCardData {
  const ExpandedMediaCardData({
    required this.backdrop,
    required this.title,
    required this.description,
    required this.genres,
    required this.shortMediaStringData,
  });

  final String backdrop;

  final String title;

  final String description;

  final List<String> genres;

  final ShortMediaStringData shortMediaStringData;
}

class ExpandedMediaCard extends StatelessWidget with Responsive<double> {
  const ExpandedMediaCard({
    super.key,
    required this.data,
  });

  final ExpandedMediaCardData data;

  @override
  double get small => .98;

  @override
  double? get medium => 0.92;

  @override
  double? get large => 0.92;

  @override
  double? get xlarge => 1;

  @override
  Widget build(BuildContext context) {
    final res = responsive(context);

    return HoverAnimation(
      scaleAnimation: true,
      child: SizedBox(
        width: 350,
        height: 440,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(
            children: [
              CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    MediaCardBackdrop(
                      opacity: 0.98,
                      pictureUrl: '${ApiEndpoints.imageLow}/${data.backdrop}',
                    ),
                    SizedBox(height: 234 * res),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 190 * res),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    MediaCardTitleOption(
                      title: data.title,
                      onPressed: () {},
                    ),
                    ShortMediaInfoString(
                      data: data.shortMediaStringData,
                    ),
                    const SizedBox(height: 4),
                    SizedBox(
                      height: 80,
                      child: MediaCardDescription(data.description),
                    ),
                    const SizedBox(height: 10),
                    Transform.scale(
                      scale: 0.9,
                      alignment: Alignment.centerLeft,
                      child: MediaGenresString(genres: data.genres),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
