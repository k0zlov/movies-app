import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/network/api_endpoints.dart';
import 'package:movies_app/core/widgets/responsive/responsive_mixin.dart';

class MediaLogo extends StatelessWidget with Responsive<double> {
  const MediaLogo({
    super.key,
    required this.logo,
    this.width = 200,
  });

  final double width;
  final String logo;

  @override
  double get small => 0.85;

  @override
  double get medium => 0.95;

  @override
  double get large => 1;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      '${ApiEndpoints.imageLow}/$logo',
      width: width * responsive(context),
      fit: BoxFit.cover,
    );
  }
}
