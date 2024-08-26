import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/errors/failure.dart';
import 'package:movies_app/core/widgets/animations/progress_bar/progress_bar.dart';

class ErrorListItem extends StatelessWidget {
  const ErrorListItem({
    required this.failure,
    required this.progressKey,
    super.key,
  });

  final Failure failure;
  final GlobalKey<ProgressBarState> progressKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 300,
      decoration: BoxDecoration(
        color: CupertinoColors.darkBackgroundGray,
        borderRadius: BorderRadius.circular(5),
      ),
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
            height: 5,
            child: ProgressBar(
              key: progressKey,
              color: CupertinoColors.destructiveRed,
              duration: const Duration(seconds: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Row(
              children: [
                const Icon(CupertinoIcons.exclamationmark_triangle_fill),
                const SizedBox(width: 10),
                Text(failure.errorMessage),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
