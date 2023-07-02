import 'package:flutter/material.dart';

class SizeConfig {
  ///SizeConfig Height Property
  ///
  static double _height = 0;

  ///SizeConfig Width Property
  ///
  static double _width = 0;

  ///The `initDevSize` must be used in the first build method.
  ///
  ///That is above the MaterialApp.
  ///
  ///This method is used to obtain the current device context for height and width.

  static void initDevSize(BuildContext context) {
    /// md stands for mediaquery
    ///
    final md = MediaQuery.of(context);

    ///initializing the `height` and `width` from the context data.
    ///
    ///getting percent `height`
    ///
    _height = (md.size.height / 100);

    ///getting percent `width`
    ///
    _width = (md.size.width / 100);
  }
}

///Adding extension over the double data type for easy access.
///
extension SizeConfigForDouble on double {
  ///The height parameter `h` is used to access the percent height of the current device.
  /// ```
  /// SizedBox(height: 45.h), //45.h = 45 % of height
  /// ```
  /// This means flutter will create a sized box with 45 % of height.
  double get h => this * SizeConfig._height;

  ///The width parameter `w` is used to access the percent width of the current device.
  /// ```
  /// SizedBox(height: 45.w), //45.w = 45 % of width
  /// ```
  /// This means flutter will create a sized box with 45 % of width.
  double get w => this * SizeConfig._width;
}

///Adding extension over the double data type for easy access.
///
extension SizeConfigForInt on int {
  ///The height parameter `h` is used to access the percent height of the current device.
  /// ```
  /// SizedBox(height: 45.h), //45.h = 45 % of height
  /// ```
  /// This means flutter will create a sized box with 45 % of height.
  double get h => this * SizeConfig._height;

  ///The width parameter `w` is used to access the percent width of the current device.
  /// ```
  /// SizedBox(height: 45.w), //45.w = 45 % of width
  /// ```
  /// This means flutter will create a sized box with 45 % of width.
  double get w => this * SizeConfig._width;
}
