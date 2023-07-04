import 'package:flutter/widgets.dart';

extension AspectRatioExt on Widget {
  AspectRatio asptRto(double aspectRatio) =>
      AspectRatio(aspectRatio: aspectRatio, child: this);
}
