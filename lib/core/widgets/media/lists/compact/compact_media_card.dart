import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/animations/hover_scale_animation.dart';
import 'package:movies_app/core/widgets/media/lists/compact/compact_media_card_background.dart';
import 'package:movies_app/core/widgets/media/lists/compact/compact_media_card_info.dart';
import 'package:movies_app/core/widgets/media/media_screen/short_info_string.dart';
import 'package:movies_app/core/widgets/responsive/responsive_mixin.dart';

class CompactMediaCardData {
  const CompactMediaCardData({
    required this.title,
    required this.logoUrl,
    required this.shortMediaStringData,
  });

  final String title;

  final String logoUrl;

  final ShortMediaStringData shortMediaStringData;
}

class CompactMediaCard extends StatelessWidget with Responsive<double> {
  const CompactMediaCard({
    super.key,
    required this.data,
  });

  final CompactMediaCardData data;

  @override
  double get small => .9;

  @override
  double? get medium => .95;

  @override
  double? get large => 1;

  @override
  Widget build(BuildContext context) {
    final double res = responsive(context);

    return HoverScaleAnimation(
      child: SizedBox(
        height: 220 * res,
        width: 350 * res,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              pressedOpacity: 0.7,
              child: CompactMediaCardBackground(logo: data.logoUrl),
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
