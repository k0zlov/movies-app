import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/network/api_endpoints.dart';
import 'package:movies_app/core/widgets/animations/hover/hover_scale_animation.dart';
import 'package:movies_app/core/widgets/media/lists/card_title_option.dart';
import 'package:movies_app/core/widgets/media/lists/media_card_backdrop.dart';
import 'package:movies_app/core/widgets/media/lists/media_card_description.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/genres_string.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/short_info_string.dart';

class MediaCollectionCardData {
  const MediaCollectionCardData({
    required this.title,
    required this.description,
    required this.poster,
    required this.genres,
    required this.shortMediaStringData,
  });

  final String title;

  final String description;

  final String poster;

  final List<String> genres;

  final ShortMediaStringData shortMediaStringData;
}

class MediaCollectionCard extends StatelessWidget {
  const MediaCollectionCard({
    super.key,
    required this.data,
  });

  final MediaCollectionCardData data;

  @override
  Widget build(BuildContext context) {
    final List<String> words = data.title.split(' ');

    String title = data.title;

    if (words.last.contains('Collection')) {
      words.removeLast();
      title = words.join(' ');
    }

    return HoverAnimation(
      scaleAnimation: true,
      child: Container(
        decoration: BoxDecoration(
          color: CupertinoColors.systemGrey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(25),
        ),
        width: 290,
        height: 655,
        child: Stack(
          children: [
            CupertinoButton(
              onPressed: () {},
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MediaCardBackdrop(
                    pictureUrl: '${ApiEndpoints.imageLow}/${data.poster}',
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(height: 230),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 410),
                  MediaCardTitleOption(
                    title: title,
                    onPressed: () {},
                  ),
                  ShortMediaInfoString(
                    data: data.shortMediaStringData,
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    height: 100,
                    child: MediaCardDescription(
                      data.description,
                      maxLines: 6,
                    ),
                  ),
                  const SizedBox(height: 10),
                  MediaGenresString(genres: data.genres),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
