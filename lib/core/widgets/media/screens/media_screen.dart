import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/media/media_screen/info_container.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({
    super.key,
    required this.body,
    required this.data,
  });

  final Widget body;

  final MediaContainerData data;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: CupertinoPageScaffold(
        child: CupertinoScrollbar(
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                MediaInfoContainer(data: data),
                const SizedBox(height: 10),
                body,
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
