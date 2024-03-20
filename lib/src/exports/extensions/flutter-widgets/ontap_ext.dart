part of '../flutter_widget_ext.dart';

extension OnTapExt on Widget {
  /// The `onTap` function in Dart returns a `GestureDetector` widget with the specified `callback`
  /// callback for the onTap event.
  ///
  /// Args:
  ///   callback (VoidCallback): The `callback` parameter is a function that will be called when the
  /// `GestureDetector` is tapped. It is of type `VoidCallback`, which is a function that takes no
  /// arguments and returns void.
  GestureDetector onTap(VoidCallback callback) =>
      GestureDetector(onTap: callback, child: this);

  /// The function `onTapInkWell` returns an `InkWell` widget with the specified `onTap` callback and
  /// child widget.
  ///
  /// Args:
  ///   callback (VoidCallback): The `callback` parameter in the `onTapInkWell` function is a `VoidCallback`
  /// type, which is a function that takes no arguments and returns void. It is intended to be the
  /// callback that is triggered when the `InkWell` widget is tapped.
  InkWell onTapInkWell(VoidCallback callback) =>
      InkWell(onTap: callback, child: this);
}
