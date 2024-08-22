import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/responsive/responsive_mixin.dart';
import 'package:movies_app/core/widgets/responsive/responsive_text.dart';

class MainMediaHeaderDescription extends StatelessWidget with Responsive<double> {
  const MainMediaHeaderDescription(
    this.description, {
    super.key,
    this.textAlign = TextAlign.left,
  });

  final TextAlign textAlign;

  final String description;

  @override
  double get small => 350;

  @override
  double? get medium => 400;

  @override
  double? get large => 450;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: responsive(context),
      child: ResponsiveText(
        text: Text(
          description,
          softWrap: true,
          textAlign: textAlign,
          overflow: TextOverflow.ellipsis,
          maxLines: 6,
        ),
      ),
    );
  }
}
