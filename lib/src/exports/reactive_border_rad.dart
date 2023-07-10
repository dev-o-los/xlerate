import 'package:flutter/widgets.dart';

RoundedRectangleBorder allRoundedRectBrdr({
  double rad = 25,
  BorderSide sd = BorderSide.none,
}) =>
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(rad), side: sd);

RoundedRectangleBorder onlyRoundedRectBrdr({
  bool bl = false,
  bool tl = false,
  bool tr = false,
  bool br = false,
  double rad = 25,
  BorderSide sd = BorderSide.none,
}) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: bl ? Radius.circular(rad) : Radius.zero,
        bottomRight: br ? Radius.circular(rad) : Radius.zero,
        topLeft: tl ? Radius.circular(rad) : Radius.zero,
        topRight: tr ? Radius.circular(rad) : Radius.zero,
      ),
      side: sd,
    );

RoundedRectangleBorder verRoundedRectBrdr({
  bool t = false,
  bool b = false,
  double rad = 25,
  BorderSide sd = BorderSide.none,
}) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: t ? Radius.circular(rad) : Radius.zero,
        bottom: b ? Radius.circular(rad) : Radius.zero,
      ),
      side: sd,
    );

RoundedRectangleBorder horzRoundedRectBrdr({
  bool l = false,
  bool r = false,
  double rad = 25,
  BorderSide sd = BorderSide.none,
}) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(
        left: l ? Radius.circular(rad) : Radius.zero,
        right: r ? Radius.circular(rad) : Radius.zero,
      ),
      side: sd,
    );

BorderRadius allRoundedBrdrRad() => BorderRadius.circular(25);
