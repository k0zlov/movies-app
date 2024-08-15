import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/lists/compact/compact_media_card.dart';
import 'package:movies_app/core/widgets/media/lists/compact/compact_media_list.dart';
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
      body: Column(
        children: [
          CompactMediaList(
            header: 'For you',
            cards: [
              CompactMediaCardData(
                title: 'Jurassic World',
                logoUrl: 'dF6FjTZzRTENfB4R17HDN20jLT2.jpg',
                shortMediaStringData: ShortMediaStringData(
                  imdbRating: 6.9,
                  additionalInfo: ['2015', '2h 4m'],
                ),
              ),
              CompactMediaCardData(
                title: 'Deadpool & Wolverine',
                logoUrl: '/yDHYTfA3R0jFYba16jBB1ef8oIt.jpg',
                shortMediaStringData: ShortMediaStringData(
                  imdbRating: 9.2,
                  additionalInfo: ['2024', '2h 40m'],
                ),
              ),
              CompactMediaCardData(
                title: 'The King',
                logoUrl: '/urwWVsciRiNSmhtMJcck0noWAXr.jpg',
                shortMediaStringData: ShortMediaStringData(
                  imdbRating: 6.5,
                  additionalInfo: ['2019', '1h 45m'],
                ),
              ),
              CompactMediaCardData(
                title: 'Inside Job',
                logoUrl: '/1yFmxvVYgVrFKL2ksFzgX0MrWOM.jpg',
                shortMediaStringData: ShortMediaStringData(
                  imdbRating: 7.9,
                  additionalInfo: ['2010', '2h'],
                ),
              ),
              CompactMediaCardData(
                title: 'Spider-Man: Homecoming',
                logoUrl: '/fn4n6uOYcB6Uh89nbNPoU2w80RV.jpg',
                shortMediaStringData: ShortMediaStringData(
                  imdbRating: 9.9,
                  additionalInfo: ['2017', '2h 32m'],
                ),
              ),
              CompactMediaCardData(
                title: 'Fast Five',
                logoUrl: '/lvSxooYCRuF3S2kHWXYTrcOtYco.jpg',
                shortMediaStringData: ShortMediaStringData(
                  imdbRating: 7.2,
                  additionalInfo: ['2011', '2h 9m'],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
