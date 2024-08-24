import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/network/api_endpoints.dart';
import 'package:movies_app/core/widgets/media/lists/media_card_backdrop.dart';

class InitialMediaCard extends StatelessWidget {
  const InitialMediaCard({
    super.key,
    required this.poster,
    this.title,
  });

  final String? title;

  final String poster;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            MediaCardBackdrop(
              pictureUrl: '${ApiEndpoints.imageMedium}/$poster',
            ),
            if (title != null) ...{
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title!),
                  ],
                ),
              ),
            },
          ],
        ),
      ),
    );
  }
}
