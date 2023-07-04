import 'package:flutter/widgets.dart';

extension PaddingExt on Widget {
  Padding pOnly({double l = 0, double r = 0, double t = 0, double b = 0}) =>
      Padding(
        padding: EdgeInsets.only(left: l, right: r, bottom: b, top: t),
        child: this,
      );

  Padding p12() => Padding(
        padding: const EdgeInsets.all(12.0),
        child: this,
      );

  Padding p16() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: this,
      );

  Padding p20() => Padding(
        padding: const EdgeInsets.all(20.0),
        child: this,
      );

  Padding p24() => Padding(
        padding: const EdgeInsets.all(24.0),
        child: this,
      );

  Padding p(double val) => Padding(
        padding: EdgeInsets.all(val),
        child: this,
      );

  Padding pLTRB(double l, double t, double r, double b) => Padding(
        padding: EdgeInsets.fromLTRB(l, t, r, b),
        child: this,
      );

  Padding psymtc({double h = 0.0, double v = 0.0}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: h, vertical: v),
        child: this,
      );
}
