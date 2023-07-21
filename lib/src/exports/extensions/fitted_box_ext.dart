import 'package:flutter/widgets.dart';

import '../enums/align_cntr_enum.dart';

extension FittedBoxExt on Widget {
  /// The function `fitdbx` returns a `FittedBox` widget with specified alignment, clip behavior, fit,
  /// and child.
  ///
  /// Args:
  ///   al (Al): The "al" parameter is of type "Al" which is an enum that represents the alignment of
  /// the child within the box. It has three possible values: "Al.c" for center alignment, "Al.tl" for
  /// top left alignment, and "Al.br" for bottom right alignment. Defaults to Al
  ///   clpbhvr (Clip): The "clpbhvr" parameter is of type "Clip" and it determines how the child widget
  /// should be clipped within the box. The possible values for "clpbhvr" are:. Defaults to Clip
  ///   fit (BoxFit): The "fit" parameter determines how the child widget should be fitted inside the
  /// available space. It accepts a value of the BoxFit enum, which has the following options:. Defaults
  /// to BoxFit
  ///   key (Key): The key parameter is an optional parameter that can be used to uniquely identify the
  /// FittedBox widget. It is typically used when working with widget trees that can dynamically change
  /// and need to be updated or rebuilt.
  ///
  /// Returns:
  ///   a FittedBox widget.
  FittedBox fitdbx(
      {Al al = Al.c,
      Clip clpbhvr = Clip.antiAlias,
      BoxFit fit = BoxFit.contain,
      Key? key}) {
    return FittedBox(
      alignment: al.value,
      clipBehavior: clpbhvr,
      fit: fit,
      child: this,
    );
  }
}
