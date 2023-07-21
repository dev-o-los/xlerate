import 'package:flutter/material.dart';

extension SizedBoxExt on num {
  /// `hbox` is creating a `SizedBox` widget with a specific
  /// height. So, if you have a `double` value, you can use the
  /// `hbox` extension to create a `SizedBox` widget with that height.
  SizedBox get hbox => SizedBox(height: toDouble());

  /// `wbox` is creating a `SizedBox` widget with a specific
  /// width. So, if you have a `double` value, you can use the
  /// `wbox` extension to create a `SizedBox` widget with that width.
  SizedBox get wbox => SizedBox(width: toDouble());
}

extension SizedBoxExtWidget on Widget {
  SizedBox szdbox(double h, double w) =>
      SizedBox(height: h, width: w, child: this);
}
