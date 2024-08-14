import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/buttons/round_icon_button.dart';

class ExpandedNavBarIconMenuRow extends StatelessWidget {
  const ExpandedNavBarIconMenuRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RoundIconButton(
          iconData: CupertinoIcons.bell,
          onPressed: () {},
        ),
        const SizedBox(width: 8),
        RoundIconButton(
          iconData: CupertinoIcons.search,
          onPressed: () {},
        ),
        const SizedBox(width: 8),
        RoundIconButton(
          iconData: CupertinoIcons.profile_circled,
          onPressed: () {},
        ),
      ],
    );
  }
}
