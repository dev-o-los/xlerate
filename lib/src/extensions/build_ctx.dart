import 'package:flutter/material.dart';

extension Buildctx on BuildContext {
  MediaQueryData get _mq => MediaQuery.of(this);

  double get csw => _mq.size.width;

  double get csh => _mq.size.height;

  double get ar => _mq.size.aspectRatio;

  double get ls => _mq.size.longestSide;

  double get ss => _mq.size.shortestSide;

  Size get flp => _mq.size.flipped;

  double get dpr => _mq.devicePixelRatio;

  bool get an => _mq.accessibleNavigation;

  double get tsf => _mq.textScaleFactor;

  EdgeInsets get pdg => _mq.padding;

  EdgeInsets get vi => _mq.viewInsets;

  Orientation get orn => _mq.orientation;
}
