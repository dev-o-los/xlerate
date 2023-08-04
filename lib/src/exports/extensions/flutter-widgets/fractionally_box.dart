import 'package:flutter/widgets.dart';

import '../../../../simple_sizer.dart';

extension FracSzdBox on Widget {
  /// The `fracSzdBox` function returns a `FractionallySizedBox` widget with optional height and width
  /// factors and alignment.
  ///
  /// Args:
  ///   hf (double): The `hf` parameter is a `double` value that represents the height factor of the
  /// `FractionallySizedBox`. It determines the height of the box as a fraction of the available
  /// vertical space. If `hf` is set to `null`, the height will be determined by the child widget
  ///   wf (double): The `wf` parameter stands for "widthFactor" and it is a double value that
  /// represents the fraction of the available width that the FractionallySizedBox should occupy. It
  /// ranges from 0.0 to 1.0, where 0.0 means the box should have no width
  ///   al (Al): The `al` parameter is of type `Al` which is an enumeration. It has a default value of
  /// `Al.c`. Defaults to Al
  FractionallySizedBox fracSzdBox({double? hf, double? wf, Al al = Al.c}) =>
      FractionallySizedBox(
        heightFactor: hf,
        widthFactor: wf,
        alignment: al.value,
      );
}
