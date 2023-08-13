import 'package:flutter/material.dart';

extension PositionedExt on Widget {
  /// The `pos` function returns a `Positioned` widget with specified positioning properties and a child
  /// widget.
  ///
  /// Args:
  ///   h (double): The height of the positioned widget. It is of type double and can be nullable.
  ///   w (double): The width of the positioned widget.
  ///   l (double): The `l` parameter represents the left position of the widget. It specifies the
  /// distance between the left edge of the widget and the left edge of its parent widget.
  ///   r (double): The `r` parameter represents the right position of the child widget within the
  /// parent widget. It specifies the distance between the right edge of the child widget and the right
  /// edge of the parent widget.
  ///   b (double): The bottom position of the widget. It specifies the distance from the bottom edge of
  /// the parent widget to the bottom edge of the positioned widget.
  ///   t (double): The top position of the widget.
  ///   key (Key): An optional Key object that can be used to identify this Positioned widget in the
  /// widget tree.
  Positioned pos({
    double? h,
    double? w,
    double? l,
    double? r,
    double? b,
    double? t,
    Key? key,
  }) =>
      Positioned(
        bottom: b,
        height: h,
        left: l,
        right: r,
        top: t,
        width: w,
        key: key,
        child: this,
      );
}
