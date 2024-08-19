import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/media/lists/expanded/expanded_media_card.dart';
import 'package:movies_app/core/widgets/media/lists/expanded/expanded_media_list.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/short_info_string.dart';
import 'package:movies_app/core/widgets/media/screen_headers/profile_header/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: CupertinoPageScaffold(
        child: CupertinoScrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProfileHeader(
                  data: ProfileHeaderData(
                    name: 'Tani',
                    picture: '/bBRlrpJm9XkNSg0YT5LCaxqoFMX.jpg',
                    friends: 4,
                    recommendations: 5,
                    memberSince: DateTime(2015, 8),
                  ),
                ),
                // MediaPersonHeader(
                //   data: MediaPersonHeaderData(
                //     name: 'Tom Holland',
                //     picture: '/bBRlrpJm9XkNSg0YT5LCaxqoFMX.jpg',
                //     knownFor: 'Acting',
                //   ),
                // ),
                ExpandedMediaList(
                  header: 'Movies',
                  cards: [
                    ExpandedMediaCardData(
                      backdrop: '/tCW0uGWwfZzRkupNFdI0yUo4A0w.jpg',
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
                      backdrop: '/tintsaQ0WLzZsTMkTiqtMB3rfc8.jpg',
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
                      backdrop: '/xJHokMbljvjADYdit5fK5VQsXEG.jpg',
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
                      backdrop: '/cDJ61O1STtbWNBwefuqVrRe3d7l.jpg',
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
                      backdrop: '/2vFuG6bWGyQUzYS9d69E5l85nIz.jpg',
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
                      backdrop: 'AaV1YIdWKnjAIAOe8UUKBFm327v.jpg',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
