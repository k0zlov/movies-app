import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/media_screen/info_container.dart';
import 'package:movies_app/core/widgets/media/media_screen/short_info_string.dart';
import 'package:movies_app/core/widgets/media/screens/media_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaScreen(
      data: MediaContainerData(
        isAdult: true,
        genres: ['Animation', 'Action', 'Adventure'],
        logoUrl: 'logoUrl',
        description:
            "An aspiring utopian regime clashes with a violent radical underground. At the heart of this revolution of magic and tech, a family's bond is tested",
        shortMediaStringData: ShortMediaStringData(
          imdbRating: 9,
          additionalInfo: ['2021', '9 episodes'],
        ),
      ),
    );
  }
}
