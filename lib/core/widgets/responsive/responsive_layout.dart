import 'package:flutter/widgets.dart';
import 'package:movies_app/core/widgets/responsive/responsive_mixin.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.small,
    this.medium,
    this.large,
    this.xlarge,
  });

  final Widget small;
  final Widget? medium;
  final Widget? large;
  final Widget? xlarge;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return switch (DeviceType.fromWidth(screenWidth)) {
      DeviceType.small => small,
      DeviceType.medium => medium ?? small,
      DeviceType.large => large ?? medium ?? small,
      DeviceType.xlarge => xlarge ?? large ?? medium ?? small,
    };
  }
}
