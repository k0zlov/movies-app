import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/main_info_header.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/short_info_string.dart';
import 'package:movies_app/core/widgets/media/slider/media_page_slider.dart';

class AuthMediaSlider extends StatelessWidget {
  const AuthMediaSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          fontSize: 34,
          fontWeight: FontWeight.w900,
        );

    return Column(
      children: [
        Text(
          'Discover Top serials \nand movies',
          textAlign: TextAlign.center,
          style: textStyle,
        ),
        const SizedBox(height: 10),
        const MediaPageSlider(
          data: [
            MainMediaInfoHeaderData(
              isAdult: false,
              genres: ['Animations', 'Test'],
              backdrop: '/58D6ZAvOKxlHjyX9S8qNKSBE9Y.jpg',
              logo: '/ySUehfaAboyWvi4o7AhqehyPzgd.png',
              description:
                  'As storm season intensifies, the paths of former storm chaser Kate Carter and reckless social-media superstar Tyler Owens collide when terrifying phenomena never seen before are unleashed. The pair and their competing teams find themselves squarely in the paths of multiple storm systems converging over central Oklahoma in the fight of their lives.',
              shortMediaStringData: ShortMediaStringData(
                imdbRating: 9.8,
                additionalInfo: ['2024', '2h 10m'],
              ),
            ),
            MainMediaInfoHeaderData(
              isAdult: false,
              genres: ['Animations', 'Test'],
              backdrop: '/cOoVcVQ3i1m5b2xtqKBtoTSbxC1.jpg',
              logo: '/yp7b0q7UybKeCOLYAJ4cKQkNbTO.png',
              description:
                  'A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.',
              shortMediaStringData: ShortMediaStringData(
                imdbRating: 9.3,
                additionalInfo: ['2024', '2h 2m'],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
