import 'package:flutter/widgets.dart';

extension AspectRatioExt on Widget {
  /// The function `asptRto` returns an `AspectRatio` widget with a specified aspect ratio and child
  /// widget.
  ///
  /// Args:
  ///   aspectRatio (double): The aspect ratio value that you want to set for the widget.
  AspectRatio asptRto(double aspectRatio) =>
      AspectRatio(aspectRatio: aspectRatio, child: this);
}
