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

  /// The function `pLRB` returns a `Padding` widget with customizable padding values for left, right,
  /// and bottom, or a default value if not provided.
  ///
  /// Args:
  ///   p (double): The default padding value for left, right, and bottom. If no specific padding values
  /// are provided for these parameters, the default value of 12.0 will be used. Defaults to 12.0
  ///   l (double): The parameter "l" is an optional double value that represents the left padding. If a
  /// value is provided, it will be used as the left padding. If no value is provided, the default value
  /// "p" will be used as the left padding.
  ///   r (double): The parameter "r" is an optional double value that represents the right padding. If
  /// a value is provided for "r", it will be used as the right padding. Otherwise, the default value
  /// "p" (which is 12.0) will be used as the right padding.
  ///   b (double): The parameter "b" represents the value for the bottom padding.
  ///
  /// Useful in cases where you want to dislay a list of widgets with only left , right and bottom padding
  /// so that the widget does not look too far away from every list item.
  Padding pLRB({double p = 12.0, double? l, double? r, double? b}) => Padding(
        padding: EdgeInsets.only(left: l ?? p, right: r ?? p, bottom: b ?? p),
        child: this,
      );

  /// The function `pLRT` returns a `Padding` widget with customizable padding values for left, right,
  /// and top, or a default value if not provided.
  ///
  /// Args:
  ///   p (double): The default padding value for left, right, and top. If no specific padding values
  /// are provided for left, right, or top, the default value will be used. Defaults to 12.0
  ///   l (double): The parameter "l" represents the left padding value. It is an optional parameter and
  /// can be set to a specific value or left unspecified.
  ///   r (double): The parameter "r" represents the value for the right padding.
  ///   t (double): The parameter "t" represents the top padding value.
  ///
  /// Useful in cases where you want to dislay a list of widgets with only left , right and bottom padding
  /// so that the widget does not look too far away from every list item.
  Padding pLRT({double p = 12.0, double? l, double? r, double? t}) => Padding(
        padding: EdgeInsets.only(left: l ?? p, right: r ?? p, top: t ?? p),
        child: this,
      );
}
