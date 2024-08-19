import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/network/api_endpoints.dart';
import 'package:movies_app/core/widgets/animations/hover/hover_scale_animation.dart';
import 'package:movies_app/core/widgets/media/lists/compact/compact_media_card_info.dart';
import 'package:movies_app/core/widgets/media/lists/media_card_backdrop.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/short_info_string.dart';

class CompactMediaCardData {
  const CompactMediaCardData({
    required this.title,
    required this.backdrop,
    required this.shortMediaStringData,
  });

  final String title;

  final String backdrop;

  final ShortMediaStringData shortMediaStringData;
}

class CompactMediaCard extends StatelessWidget {
  const CompactMediaCard({
    super.key,
    required this.data,
  });

  final CompactMediaCardData data;

  @override
  Widget build(BuildContext context) {
    return HoverAnimation(
      scaleAnimation: true,
      child: SizedBox(
        height: 210,
        width: 350,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              pressedOpacity: 0.7,
              child: MediaCardBackdrop(
                pictureUrl: '${ApiEndpoints.imageLow}/${data.backdrop}',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 28,
                horizontal: 10,
              ),
              child: CompactMediaCardInfo(
                title: data.title,
                shortMediaStringData: data.shortMediaStringData,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
