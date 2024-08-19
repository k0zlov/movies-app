import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:movies_app/core/widgets/buttons/main_option_button.dart';
import 'package:movies_app/core/widgets/media/lists/people/media_people_picture.dart';
import 'package:movies_app/core/widgets/media/screen_headers/profile_header/profile_info_string.dart';

class ProfileHeaderData {
  const ProfileHeaderData({
    required this.name,
    required this.picture,
    required this.friends,
    required this.recommendations,
    required this.memberSince,
  });

  final String name;

  final String picture;

  final int friends;

  final int recommendations;

  final DateTime memberSince;
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.data,
  });

  final ProfileHeaderData data;

  @override
  Widget build(BuildContext context) {
    final String formattedString =
        DateFormat('MMMM yyyy').format(data.memberSince);

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
          Text(data.name, style: textStyle),
          const SizedBox(height: 10),
          Text(
            'Member since $formattedString',
            style: textStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: CupertinoColors.systemGrey.withOpacity(0.55),
            ),
          ),
          const SizedBox(height: 35),
          const ProfileInfoString(friends: 25, recommendations: 13),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainOptionButton(
                title: 'Add Friend',
                iconData: CupertinoIcons.add,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
