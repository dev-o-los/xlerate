part of '../flutter_widget_ext.dart';

extension OnTapExt on Widget {
  GestureDetector onTap(VoidCallback action) =>
      GestureDetector(onTap: action, child: this);

  InkWell onTapInkWell(VoidCallback action) =>
      InkWell(onTap: action, child: this);
}
