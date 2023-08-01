import 'package:flutter/material.dart';

BorderRadius curveTopRightLeftCornerBy(double rad) {
  return BorderRadius.only(
    topLeft: Radius.circular(rad),
    topRight: Radius.circular(rad),
  );
}
