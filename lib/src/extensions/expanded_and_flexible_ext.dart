import 'package:flutter/widgets.dart';

extension ExpandedExt on Widget {
  /// The function `expd` returns an `Expanded` widget with a specified flex value and child widget.
  ///
  /// Args:
  ///   flex (int): The `flex` parameter is an optional parameter with a default value of 1. It is used
  /// to determine the flex factor of the child widget within the `Expanded` widget. The flex factor
  /// determines how much space the child widget should occupy relative to other child widgets within
  /// the same parent widget. Defaults to 1
  Expanded expd({int flex = 1}) => Expanded(flex: flex, child: this);

  /// The function `expdW` returns a `SizedBox` widget with the width set to `double.infinity` and a
  /// child widget wrapped in an `Expanded` widget.
  SizedBox expdW() => SizedBox(
        width: double.infinity,
        child: Expanded(child: this),
      );

  /// The function `expdH` returns a `SizedBox` widget with a height of `double.infinity` and a child
  /// widget wrapped in an `Expanded` widget.
  SizedBox expdH() => SizedBox(
        height: double.infinity,
        child: Expanded(child: this),
      );

  /// The function `flxbl` returns a `Flexible` widget with specified `fit` and `flex` properties, and
  /// the child widget.
  ///
  /// Args:
  ///   fit (FlexFit): The fit parameter determines how the child widget should flex within its parent.
  /// It can have one of two values: FlexFit.tight or FlexFit.loose. Defaults to FlexFit
  ///   flex (int): The `flex` parameter determines how much space the child of the `Flexible` widget
  /// should occupy relative to its siblings. It is an integer value, and the default value is 1.
  /// Defaults to 1
  Flexible flxbl({FlexFit fit = FlexFit.loose, int flex = 1}) => Flexible(
        fit: fit,
        flex: flex,
        child: this,
      );
}
