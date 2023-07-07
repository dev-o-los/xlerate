import 'package:flutter/material.dart';

extension SliverToBoxAdaptarExt on Widget {
  /// The function `slivadapt` returns a `SliverToBoxAdapter` widget with the given key and child.
  ///
  /// Args:
  ///   key (Key): The `key` parameter is an optional parameter of type `Key`. It is used to uniquely
  /// identify the `SliverToBoxAdapter` widget in the widget tree. If provided, it helps Flutter to
  /// efficiently update and manage the widget tree when changes occur.
  SliverToBoxAdapter slivadapt({Key? key}) =>
      SliverToBoxAdapter(key: key, child: this);
}
