part of '../flutter_widget_ext.dart';

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
  /// Returns:
  ///   A custom widget named `szdbox` is being returned. This widget either returns a Container with the
  ///   specified color, height, width, and child widget if the color is not null, or returns a SizedBox
  ///   with the specified height, width, and child widget if the color is null.
  Widget szdbox({double? h, double? w, Color? col}) {
    return col != null
        ? Container(color: col, height: h, width: w, child: this)
        : SizedBox(height: h, width: w, child: this);
  }
}
