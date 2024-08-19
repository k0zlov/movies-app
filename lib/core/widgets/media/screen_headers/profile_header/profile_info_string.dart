import 'package:flutter/cupertino.dart';

class ProfileInfoString extends StatelessWidget {
  const ProfileInfoString({
    super.key,
    required this.friends,
    required this.recommendations,
  });

  final int friends;

  final int recommendations;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProfileInfoStringCell(
          title: 'Recommendations',
          count: recommendations,
        ),
        const SizedBox(width: 40),
        ProfileInfoStringCell(
          title: 'Friends',
          count: friends,
        ),
      ],
    );
  }
}

class ProfileInfoStringCell extends StatelessWidget {
  const ProfileInfoStringCell({
    super.key,
    required this.title,
    required this.count,
  });

  final int count;

  final String title;

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle;

    return Column(
      children: [
        Text(
          count.toString(),
          style: textStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: textStyle.copyWith(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
