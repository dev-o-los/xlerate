import 'package:flutter/widgets.dart';

extension PaddingExt on Widget {
  /// The function `pOnly` returns a `Padding` widget with specified padding values for left, right,
  /// top, and bottom.
  ///
  /// Args:
  ///   l (double): The parameter "l" represents the left padding value. Defaults to 0
  ///   r (double): The parameter "r" in the Padding pOnly function represents the amount of padding to
  /// be applied to the right side of the child widget. Defaults to 0
  ///   t (double): The parameter "t" stands for the top padding. It specifies the amount of space to be
  /// added at the top of the child widget. Defaults to 0
  ///   b (double): The parameter "b" stands for the padding value for the bottom side of the widget.
  /// Defaults to 0
  Padding pOnly({double l = 0, double r = 0, double t = 0, double b = 0}) =>
      Padding(
        padding: EdgeInsets.only(left: l, right: r, bottom: b, top: t),
        child: this,
      );

  /// The function `p12` returns a `Padding` widget with a padding of 12 pixels on all sides and the
  /// child widget passed to it.
  Padding p12() => Padding(
        padding: const EdgeInsets.all(12.0),
        child: this,
      );

  /// The function `p16` returns a `Padding` widget with a padding of 16 pixels on all sides and the
  /// child widget passed to it.
  Padding p16() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: this,
      );

  /// The function `p20` returns a `Padding` widget with a padding of 20 pixels on all sides and the
  /// child widget passed to it.
  Padding p20() => Padding(
        padding: const EdgeInsets.all(20.0),
        child: this,
      );

  /// The function `p24` returns a `Padding` widget with a padding of 24.0 on all sides and the child
  /// widget as its child.
  Padding p24() => Padding(
        padding: const EdgeInsets.all(24.0),
        child: this,
      );

  /// The function `p` returns a `Padding` widget with a specified padding value and the child widget.
  ///
  /// Args:
  ///   val (double): The val parameter is a double value that represents the amount of padding to be
  /// applied to all sides of the child widget.
  Padding p(double val) => Padding(
        padding: EdgeInsets.all(val),
        child: this,
      );

  /// The function `pLTRB` returns a `Padding` widget with specified left, top, right, and bottom
  /// padding values.
  ///
  /// Args:
  ///   l (double): The left padding value.
  ///   t (double): The top padding value.
  ///   r (double): The right padding value.
  ///   b (double): The bottom padding value.
  Padding pLTRB(double l, double t, double r, double b) => Padding(
        padding: EdgeInsets.fromLTRB(l, t, r, b),
        child: this,
      );

  /// The `psymtc` function returns a `Padding` widget with the specified horizontal and vertical
  /// padding values.
  ///
  /// Args:
  ///   h (double): The horizontal padding value. It specifies the amount of space to be added
  /// horizontally on both sides of the child widget. Defaults to 0.0
  ///   v (double): The vertical padding value. It specifies the amount of space to add above and below
  /// the child widget. Defaults to 0.0
  Padding psymtc({double h = 0.0, double v = 0.0}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: h, vertical: v),
        child: this,
      );
}
