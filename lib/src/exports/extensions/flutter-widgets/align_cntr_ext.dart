import 'package:flutter/widgets.dart';

import '../../../../xlerate.dart';

extension AlignCntrExt on Widget {
  /// The function `algn` returns an `Align` widget with specified alignment, height factor, width
  /// factor, and child.
  ///
  /// Args:
  ///   hf (double): The `hf` parameter is of type `double?` and represents the height factor for the
  /// alignment. It determines how the child widget should be vertically aligned within its parent. A
  /// value of 1.0 means the child should be aligned at the top, 0.5 means it should be
  ///   wf (double): The `wf` parameter is a `double?` type, which means it can accept a `double` value
  /// or `null`. It represents the width factor for the alignment.
  ///   al (Al): The "al" parameter is of type "Al" and has a default value of "Al.c". Defaults to Al
  Align algn({double? hf, double? wf, Al al = Al.c}) => Align(
        alignment: al.value,
        heightFactor: hf,
        widthFactor: wf,
        child: this,
      );

  /// The function `cntr` takes in optional parameters `hf` and `wf` and returns a `Center` widget with
  /// the specified height and width factors, and the child widget.
  ///
  /// Args:
  ///   hf (double): The `hf` parameter is of type `double?`, which means it can either be a `double`
  /// value or `null`. It represents the height factor of the `Center` widget. The height factor
  /// determines the height of the `Center` widget relative to its parent widget.
  ///   wf (double): The parameter `wf` stands for "widthFactor". It is a double value that determines
  /// the width factor of the child widget within the Center widget. It specifies the ratio of the
  /// child's width to the available width in the Center widget. A value of 1.0 means the child will
  /// take
  Center cntr({double? hf, double? wf}) => Center(
        heightFactor: hf,
        widthFactor: wf,
        child: this,
      );
}
