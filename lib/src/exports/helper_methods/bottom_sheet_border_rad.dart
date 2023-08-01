import 'package:flutter/material.dart';

BorderRadius curveTopRightLeftCornerByRad({double rad = 20}) {
  return BorderRadius.only(
    topLeft: Radius.circular(rad),
    topRight: Radius.circular(rad),
  );
}
