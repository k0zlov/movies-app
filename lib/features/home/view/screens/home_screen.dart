import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/lists/compact/compact_media_card.dart';
import 'package:movies_app/core/widgets/media/lists/compact/compact_media_list.dart';
import 'package:movies_app/core/widgets/media/lists/expanded/expanded_media_card.dart';
import 'package:movies_app/core/widgets/media/lists/expanded/expanded_media_list.dart';
import 'package:movies_app/core/widgets/media/lists/people/media_people_card.dart';
import 'package:movies_app/core/widgets/media/lists/people/media_people_list.dart';
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
          SizedBox(height: 30),
          ExpandedMediaList(
            header: 'Trending Now',
            cards: [
              ExpandedMediaCardData(
                logoUrl: '/tCW0uGWwfZzRkupNFdI0yUo4A0w.jpg',
                title: 'Blackfish',
                description:
                    'Notorious killer whale Tilikum is responsible for the deaths of three individuals, including a top killer whale trainer. Blackfish shows the sometimes devastating consequences of keeping such intelligent and sentient creatures in captivity.',
                genres: ['First', 'second', 'third'],
                shortMediaStringData: ShortMediaStringData(
                  imdbRating: 9.4,
                  additionalInfo: ['2013', '2h 4m'],
                ),
              ),
              ExpandedMediaCardData(
                logoUrl: '/tintsaQ0WLzZsTMkTiqtMB3rfc8.jpg',
                title: 'The Gentlemen',
                description:
                    'An American expat tries to sell off his highly profitable marijuana empire on London, triggering plots, schemes, bribery and blackmail in an attempt to steal his domain out from under him',
                genres: ['First', 'second', 'third'],
                shortMediaStringData: ShortMediaStringData(
                  imdbRating: 6.5,
                  additionalInfo: ['2019', '2h 40m'],
                ),
              ),
              ExpandedMediaCardData(
                logoUrl: '/xJHokMbljvjADYdit5fK5VQsXEG.jpg',
                title: 'Interstellar',
                description:
                    'The adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.',
                genres: ['First', 'second', 'third'],
                shortMediaStringData: ShortMediaStringData(
                  imdbRating: 9.4,
                  additionalInfo: ['2014', '2h 32m'],
                ),
              ),
              ExpandedMediaCardData(
                logoUrl: '/cDJ61O1STtbWNBwefuqVrRe3d7l.jpg',
                title: 'Thor',
                description:
                    "Against his father Odin's will, The Mighty Thor - a powerful but arrogant warrior god - recklessly reignites an ancient war. Thor is cast down to Earth and forced to live among humans as punishment. Once here, Thor learns what it takes to be a true hero when the most dangerous villain of his world sends the darkest forces of Asgard to invade Earth.",
                genres: ['First', 'second', 'third'],
                shortMediaStringData: ShortMediaStringData(
                  imdbRating: 9.8,
                  additionalInfo: ['2011', '1h 56m'],
                ),
              ),
              ExpandedMediaCardData(
                logoUrl: '/2vFuG6bWGyQUzYS9d69E5l85nIz.jpg',
                title: 'Transformers: Rise of the Beasts',
                description:
                    'When a new threat capable of destroying the entire planet emerges, Optimus Prime and the Autobots must team up with a powerful faction known as the Maximals. With the fate of humanity hanging in the balance, humans Noah and Elena will do whatever it takes to help the Transformers as they engage in the ultimate battle to save Earth.',
                genres: ['First', 'second', 'third'],
                shortMediaStringData: ShortMediaStringData(
                  imdbRating: 9,
                  additionalInfo: ['2023', '2h 4m'],
                ),
              ),
              ExpandedMediaCardData(
                logoUrl: 'AaV1YIdWKnjAIAOe8UUKBFm327v.jpg',
                title: 'Top Gun: Maverick',
                description:
                    'After more than thirty years of service as one of the Navy’s top aviators, and dodging the advancement in rank that would ground him, Pete “Maverick” Mitchell finds himself training a detachment of TOP GUN graduates for a specialized mission the likes of which no living pilot has ever seen.',
                genres: ['First', 'second', 'third'],
                shortMediaStringData: ShortMediaStringData(
                  imdbRating: 9.9,
                  additionalInfo: ['2022', '2h 36m'],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          MediaPeopleList(
            header: 'People',
            cards: [
              MediaPeopleCardData(
                picture: '/83o3koL82jt30EJ0rz4Bnzrt2dd.jpg',
                name: 'Chris Pratt',
              ),
              MediaPeopleCardData(
                picture: '/2Orm6l3z3zukF1q0AgIOUqvwLeB.jpg',
                name: 'Ryan Reynolds',
              ),
              MediaPeopleCardData(
                picture: '/4Xujtewxqt6aU0Y81tsS9gkjizk.jpg',
                name: 'Hugh Jackman',
              ),
              MediaPeopleCardData(
                picture: '/wqGOVOsHzZaHeHymIS40elGCnY0.jpg',
                name: 'Cassandra Nova',
              ),
              MediaPeopleCardData(
                picture: '/2FF3Yjxd7DYR4EIJL6s2GpKDMkJ.jpg',
                name: 'Matthew Macfadyen',
              ),
              MediaPeopleCardData(
                picture: '/g325OIjIHrFr0te8ewPfhKQ2SKj.jpg',
                name: 'Dafne Keen',
              ),
              MediaPeopleCardData(
                picture: '/tnx7iMVydPQXGOoLsxXl84PXtbA.jpg',
                name: 'Jon Favreau',
              ),
              MediaPeopleCardData(
                picture: '/kBSKKaOtsqIzZPhtEeHfCBmhWl9.jpg',
                name: 'Morena Baccarin',
              ),
              MediaPeopleCardData(
                picture: '/xirfT1znRkkughLiPemKu3NhkKQ.jpg',
                name: 'Rob Delaney',
              ),
              MediaPeopleCardData(
                picture: '/peLaqLcs3y2WY4TbrLOXQGt9I8S.jpg',
                name: 'Leslie Uggams',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
