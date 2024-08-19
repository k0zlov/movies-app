import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/buttons/imdb_logo_button.dart';
import 'package:movies_app/core/widgets/buttons/main_option_button.dart';
import 'package:movies_app/core/widgets/media/lists/people/media_people_picture.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/genres_string.dart';

class MediaPersonHeaderData {
  const MediaPersonHeaderData({
    required this.name,
    required this.picture,
    required this.knownFor,
  });

  final String name;

  final String picture;

  final String knownFor;
}

class MediaPersonHeader extends StatelessWidget {
  const MediaPersonHeader({
    super.key,
    required this.data,
  });

  final MediaPersonHeaderData data;

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        );

    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .15,
      ),
      child: Column(
        children: [
          MediaPeoplePicture(picture: data.picture),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(data.name, style: textStyle),
              const SizedBox(width: 10),
              ImdbLogoButton(onPressed: () {}),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainOptionButton(
                title: 'Add to favorite',
                iconData: CupertinoIcons.plus,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 20),
          MediaGenresString(
            genres: [data.knownFor],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
