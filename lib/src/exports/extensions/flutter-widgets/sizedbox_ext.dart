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
  /// The `szdbox` function returns a `SizedBox` widget with the specified height, width, and child.
  ///
  /// Args:
  ///   h (double): The height of the SizedBox.
  ///   w (double): The parameter "w" in the above code represents the desired width of the SizedBox
  /// widget.
  SizedBox szdbox({double? h, double? w}) =>
      SizedBox(height: h, width: w, child: this);
}
