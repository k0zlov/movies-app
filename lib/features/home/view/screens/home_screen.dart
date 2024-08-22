import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/media/lists/collection/media_collection_card.dart';
import 'package:movies_app/core/widgets/media/lists/collection/media_collection_list.dart';
import 'package:movies_app/core/widgets/media/lists/compact/compact_media_card.dart';
import 'package:movies_app/core/widgets/media/lists/compact/compact_media_list.dart';
import 'package:movies_app/core/widgets/media/lists/expanded/expanded_media_card.dart';
import 'package:movies_app/core/widgets/media/lists/expanded/expanded_media_list.dart';
import 'package:movies_app/core/widgets/media/lists/people/media_people_card.dart';
import 'package:movies_app/core/widgets/media/lists/people/media_people_list.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/main_info_header.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/short_info_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectionArea(
      child: CupertinoPageScaffold(
        child: CupertinoScrollbar(
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                MainMediaInfoHeader(
                  data: MainMediaInfoHeaderData(
                    isAdult: true,
                    genres: ['Animation', 'Action', 'Adventure'],
                    backdrop: '/rkB4LyZHo1NHXFEDHl9vSD9r1lI.jpg',
                    logo: 'logoUrl',
                    description:
                        "An aspiring utopian regime clashes with a violent radical underground. At the heart of this revolution of magic and tech, a family's bond is tested",
                    shortMediaStringData: ShortMediaStringData(
                      imdbRating: 9,
                      additionalInfo: ['2021', '9 episodes'],
                    ),
                  ),
                ),
                CompactMediaList(
                  header: 'For you',
                  cards: [
                    CompactMediaCardData(
                      title: 'Jurassic World',
                      backdrop: 'dF6FjTZzRTENfB4R17HDN20jLT2.jpg',
                      shortMediaStringData: ShortMediaStringData(
                        imdbRating: 6.9,
                        additionalInfo: ['2015', '2h 4m'],
                      ),
                    ),
                    CompactMediaCardData(
                      title: 'Deadpool & Wolverine',
                      backdrop: '/yDHYTfA3R0jFYba16jBB1ef8oIt.jpg',
                      shortMediaStringData: ShortMediaStringData(
                        imdbRating: 9.2,
                        additionalInfo: ['2024', '2h 40m'],
                      ),
                    ),
                    CompactMediaCardData(
                      title: 'The King',
                      backdrop: '/urwWVsciRiNSmhtMJcck0noWAXr.jpg',
                      shortMediaStringData: ShortMediaStringData(
                        imdbRating: 6.5,
                        additionalInfo: ['2019', '1h 45m'],
                      ),
                    ),
                    CompactMediaCardData(
                      title: 'Inside Job',
                      backdrop: '/1yFmxvVYgVrFKL2ksFzgX0MrWOM.jpg',
                      shortMediaStringData: ShortMediaStringData(
                        imdbRating: 7.9,
                        additionalInfo: ['2010', '2h'],
                      ),
                    ),
                    CompactMediaCardData(
                      title: 'Spider-Man: Homecoming',
                      backdrop: '/fn4n6uOYcB6Uh89nbNPoU2w80RV.jpg',
                      shortMediaStringData: ShortMediaStringData(
                        imdbRating: 9.9,
                        additionalInfo: ['2017', '2h 32m'],
                      ),
                    ),
                    CompactMediaCardData(
                      title: 'Fast Five',
                      backdrop: '/lvSxooYCRuF3S2kHWXYTrcOtYco.jpg',
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
                  grid: false,
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
                SizedBox(height: 30),
                MediaCollectionList(
                  header: 'Collections',
                  cards: [
                    MediaCollectionCardData(
                      title: 'Harry Potter Collection',
                      description:
                          'The Harry Potter films are a fantasy series based on the series of seven Harry Potter novels by British writer J. K. Rowling.',
                      poster: '/eVPs2Y0LyvTLZn6AP5Z6O2rtiGB.jpg',
                      genres: ['Fantasy', 'Magic'],
                      shortMediaStringData: ShortMediaStringData(
                        imdbRating: 9.4,
                        additionalInfo: ['2001 - 2011', '8 movies'],
                      ),
                    ),
                    MediaCollectionCardData(
                      title: 'The Avengers Collection',
                      description:
                          'A superhero film series produced by Marvel Studios based on the Marvel Comics superhero team of the same name, and part of the Marvel Cinematic Universe (MCU).  The series features an ensemble cast from the Marvel Cinematic Universe series films, as they join forces for the peacekeeping organization S.H.I.E.L.D. led by Nick Fury.',
                      poster: '/yFSIUVTCvgYrpalUktulvk3Gi5Y.jpg',
                      genres: ['Comics', 'Action'],
                      shortMediaStringData: ShortMediaStringData(
                        imdbRating: 9.2,
                        additionalInfo: ['2012 - 2019', '4 movies'],
                      ),
                    ),
                    MediaCollectionCardData(
                      title: 'The Lord of the Rings Collection',
                      description:
                          'The Lord of the Rings trilogy consists of three epic fantasy films, based on the influential novels written by J. R. R. Tolkien, directed by Peter Jackson.',
                      poster: '/oENY593nKRVL2PnxXsMtlh8izb4.jpg',
                      genres: ['Fantasy', 'Medieval'],
                      shortMediaStringData: ShortMediaStringData(
                        imdbRating: 9.1,
                        additionalInfo: ['2001 - 2003', '3 movies'],
                      ),
                    ),
                    MediaCollectionCardData(
                      title: 'How to Train Your Dragon Collection',
                      description:
                          "This computer-animated action fantasy film series follows the adventures of a young Viking named Hiccup Horrendous Haddock III, son of Stoick the Vast, leader of the Viking island of Berk. Although initially dismissed as a clumsy and underweight misfit, he soon becomes renowned as a courageous expert in dragons, beginning with Toothless, a member of the rare Night Fury breed as his flying mount and his closest companion. Together with his friends, he manages the village's allied dragon population in defense of his home as leader of a flying corps of dragon riders. Upon becoming leaders of their kind, Hiccup and Toothless are forced to make choices that will truly ensure peace between people and dragons.",
                      poster: '/hS8y3BcPki0GQKRQeGQVAz6BijK.jpg',
                      genres: ['Animation'],
                      shortMediaStringData: ShortMediaStringData(
                        imdbRating: 9.9,
                        additionalInfo: ['2010 - 2019', '3 movies'],
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
