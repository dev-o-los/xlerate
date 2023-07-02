import 'dart:js_interop';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

extension Buildctx on BuildContext {
  //*[Start MediaQuery]

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

  bool get alUse24Frt => _mq.alwaysUse24HourFormat;

  bool get bt => _mq.boldText;

  bool get danims => _mq.disableAnimations;

  List<DisplayFeature> get df => _mq.displayFeatures;

  Brightness get pb => _mq.platformBrightness;

  DeviceGestureSettings get gs => _mq.gestureSettings;

  bool get hc => _mq.highContrast;

  NavigationMode get navmode => _mq.navigationMode;

  EdgeInsets get sgi => _mq.systemGestureInsets;

  EdgeInsets get vp => _mq.viewPadding;

  Type get rtt => _mq.runtimeType;

  int get hsc => _mq.hashCode;

  bool get isdann => _mq.isDefinedAndNotNull;

  bool get isn => _mq.isNull;

  bool get isu => _mq.isUndefined;

  bool get isuon => _mq.isUndefinedOrNull;

  Object get tod => _mq.toDart;

  Object get tojs => _mq.toJS;

  String get tos => _mq.toString();

  MediaQueryData get cw => _mq.copyWith();

  //*[End MediaQuery]

  //*[Start ThemeData]

  ThemeData get _th => Theme.of(this);

  ColorScheme get cs => _th.colorScheme;

  ActionIconThemeData? get ait => _th.actionIconTheme;

  AppBarTheme get csbg => _th.appBarTheme;

  BadgeThemeData get badgetheme => _th.badgeTheme;
}
