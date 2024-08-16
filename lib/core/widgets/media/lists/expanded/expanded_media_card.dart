import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/animations/hover/hover_scale_animation.dart';
import 'package:movies_app/core/widgets/media/lists/card_title_option.dart';
import 'package:movies_app/core/widgets/media/lists/expanded/expanded_media_card_description.dart';
import 'package:movies_app/core/widgets/media/lists/media_card_backdrop.dart';
import 'package:movies_app/core/widgets/media/media_screen/genres_string.dart';
import 'package:movies_app/core/widgets/media/media_screen/short_info_string.dart';

class ExpandedMediaCardData {
  const ExpandedMediaCardData({
    required this.logoUrl,
    required this.title,
    required this.description,
    required this.genres,
    required this.shortMediaStringData,
  });

  final String logoUrl;

  final String title;

  final String description;

  final List<String> genres;

  final ShortMediaStringData shortMediaStringData;
}

class ExpandedMediaCard extends StatelessWidget  {
  const ExpandedMediaCard({
    super.key,
    required this.data,
  });

  final ExpandedMediaCardData data;


  @override
  Widget build(BuildContext context) {
    return HoverAnimation(
      scaleAnimation: true,
      child: SizedBox(
        width: 350 ,
        height: 440 ,
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
                      logo: data.logoUrl,
                    ),
                    const SizedBox(height: 234),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    MediaCardTitleOption(
                      title: data.title,
                      onPressed: () {},
                    ),
                    ShortMediaInfoString(
                      data: data.shortMediaStringData,
                    ),
                    const SizedBox(height: 4),
                    ExpandedMediaCardDescription(data.description),
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
