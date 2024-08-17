import 'package:flutter/cupertino.dart';

enum DeviceType {
  small,
  medium,
  large,
  xlarge;

  static DeviceType fromWidth(double screenWidth) {
    return switch (screenWidth) {
      >= 1280 => DeviceType.xlarge,
      >= 1024 => DeviceType.large,
      >= 768 => DeviceType.medium,
      _ => DeviceType.small,
    };
  }
}

mixin Responsive<T> {
  T get small;

  T? get medium => null;

  T? get large => null;

  T? get xlarge => null;

  T responsive(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return switch (DeviceType.fromWidth(screenWidth)) {
      DeviceType.small => small,
      DeviceType.medium => medium ?? small,
      DeviceType.large => large ?? medium ?? small,
      DeviceType.xlarge => xlarge ?? large ?? medium ?? small,
    };
  }
}
