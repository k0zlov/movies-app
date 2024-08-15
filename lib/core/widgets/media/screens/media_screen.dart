import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/media_screen/backdrop.dart';
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
    return CupertinoPageScaffold(
      child: CupertinoScrollbar(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const MediaBackdrop(),
              MediaScreenBody(
                body: body,
                data: data,
              ),
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
    required this.body,
    required this.data,
  });

  final Widget body;

  final MediaContainerData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 80,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: MediaInfoContainer(
              data: data,
            ),
          ),
          const SizedBox(height: 60),
          body,
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
