import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/media_screen/backdrop.dart';
import 'package:movies_app/core/widgets/media/media_screen/info_container.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({
    super.key,
    required this.data,
  });

  final MediaContainerData data;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoScrollbar(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const MediaBackdrop(),
              MediaScreenBody(data: data),
            ],
          ),
        ),
      ),
    );
  }
}

class MediaScreenBody extends StatelessWidget {
  const MediaScreenBody({
    super.key,
    required this.data,
  });

  final MediaContainerData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 40,
        top: 80,
      ),
      child: Column(
        children: [
          MediaInfoContainer(
            data: data,
          ),
        ],
      ),
    );
  }
}
