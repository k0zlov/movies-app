import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/lists/list_header.dart';
import 'package:movies_app/core/widgets/responsive/responsive_mixin.dart';

class MediaList extends StatelessWidget {
  const MediaList({
    super.key,
    required this.header,
    required this.children,
    this.spacing = 20,
    this.grid = false,
    this.gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 5,
    ),
  });

  final bool grid;

  final double spacing;

  final String header;

  final List<Widget> children;

  final SliverGridDelegate gridDelegate;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MediaListHeader(
          text: header,
          onPressed: () {},
        ),
        if (grid)
          _GridMediaList(
            gridDelegate: gridDelegate,
            children: children,
          )
        else
          _ScrollMediaList(
            spacing: spacing,
            children: children,
          ),
      ],
    );
  }
}

class _ScrollMediaList extends StatelessWidget with Responsive<double> {
  const _ScrollMediaList({
    required this.spacing,
    required this.children,
  });

  final double spacing;

  final List<Widget> children;

  @override
  double get small => .93;

  @override
  double? get medium => .96;

  @override
  double? get large => 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      duration: const Duration(milliseconds: 220),
      scale: responsive(context),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        child: Row(
          children: [
            const SizedBox(width: 20),
            for (final Widget child in children) ...{
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: child,
              ),
              SizedBox(width: spacing),
            },
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

class _GridMediaList extends StatelessWidget {
  const _GridMediaList({
    required this.children,
    required this.gridDelegate,
  });

  final List<Widget> children;

  final SliverGridDelegate gridDelegate;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: gridDelegate,
      itemCount: children.length,
      itemBuilder: (context, index) {
        return children[index];
      },
    );
  }
}
