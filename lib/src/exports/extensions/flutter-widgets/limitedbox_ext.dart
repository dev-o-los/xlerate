part of '../flutter_widget_ext.dart';

extension LimitedBoxExt on Widget {
  /// The function `limtdbx` returns a `LimitedBox` widget with specified maximum height and width, and
  /// the child widget as its child.
  ///
  /// Args:
  ///   mxH (double): The maximum height that the child widget can have. If the child widget's height
  /// exceeds this value, it will be constrained to this maximum height. Defaults to double
  ///   mxW (double): The `mxW` parameter is used to set the maximum width for the `LimitedBox` widget.
  /// By default, it is set to `double.infinity`, which means there is no maximum width constraint. You
  /// can provide a specific value to limit the width of the `LimitedBox` widget. Defaults to double
  LimitedBox limtdbx(
          {double mxH = double.infinity, double mxW = double.infinity}) =>
      LimitedBox(
        maxHeight: mxH,
        maxWidth: mxW,
        child: this,
      );
}
