import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/lists/people/media_people_picture.dart';

class MediaPeopleCardData {
  const MediaPeopleCardData({
    required this.picture,
    required this.name,
    this.role,
  });

  final String picture;

  final String name;

  final String? role;
}

class MediaPeopleCard extends StatelessWidget{
  const MediaPeopleCard({
    super.key,
    required this.data,
  });

  final MediaPeopleCardData data;

  @override
  Widget build(BuildContext context) {
    final nameParts = data.name.split(' ');

    String firstLine;
    String secondLine;

    if (nameParts.length > 3) {
      firstLine = nameParts.sublist(0, 2).join(' ');
      secondLine = nameParts.sublist(2).join(' ');
    } else if (nameParts.length == 3) {
      firstLine = nameParts.sublist(0, 2).join(' ');
      secondLine = nameParts.last;
    } else {
      firstLine = nameParts.first;
      secondLine = nameParts.length > 1 ? nameParts.last : '';
    }
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle;

    return CupertinoButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      child: SizedBox(
        height: 240,
        width: 170,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MediaPeoplePicture(picture: data.picture),
            const SizedBox(height: 6),
            Text(
              '$firstLine\n$secondLine',
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: textStyle.copyWith(
                fontSize: 19,
              ),
            ),
            if (data.role != null) ...{
              Text(
                data.role!,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: textStyle.copyWith(
                  color: CupertinoColors.systemGrey,
                ),
              ),
            },
          ],
        ),
      ),
    );
  }
}
