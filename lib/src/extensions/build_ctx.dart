import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

extension Buildctx on BuildContext {
  //*[Start MediaQuery]

  MediaQueryData get _mq => MediaQuery.of(this);

  /// The `csw` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the width of the current device screen
  /// using the `MediaQuery` class. It returns the width of the screen in
  /// logical pixels.
  double get csw => _mq.size.width;

  // The `csh` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the height of the current device screen
  /// using the `MediaQuery` class. It returns the height of the screen in
  /// logical pixels.
  double get csh => _mq.size.height;

  /// The `ar` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the aspectRatio of the current device screen
  /// using the `MediaQuery` class.
  double get ar => _mq.size.aspectRatio;

  /// The `ls` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the longestSide of the current device screen
  /// using the `MediaQuery` class.
  double get ls => _mq.size.longestSide;

  /// The `ss` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the shortestSide of the current device screen
  /// using the `MediaQuery` class.
  double get ss => _mq.size.shortestSide;

  /// The `flp` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the flipped of the current device screen
  /// using the `MediaQuery` class.
  Size get flp => _mq.size.flipped;

  /// The `dpr` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the devicePixelRatio of the current device screen
  /// using the `MediaQuery` class.
  double get dpr => _mq.devicePixelRatio;

  /// The `an` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the accessibleNavigation of the current device screen
  /// using the `MediaQuery` class.
  bool get an => _mq.accessibleNavigation;

  /// The `tsf` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the textScaleFactor of the current device screen
  /// using the `MediaQuery` class.
  double get tsf => _mq.textScaleFactor;

  /// The `pdg` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the padding of the current device screen
  /// using the `MediaQuery` class.
  EdgeInsets get pdg => _mq.padding;

  /// The `vi` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the viewInsets of the current device screen
  /// using the `MediaQuery` class.
  EdgeInsets get vi => _mq.viewInsets;

  /// The `orn` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the orientation of the current device screen
  /// using the `MediaQuery` class.
  Orientation get orn => _mq.orientation;

  /// The `alUse24Frt` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the alwaysUse24HourFormat of the current device screen
  /// using the `MediaQuery` class.
  bool get alUse24Frt => _mq.alwaysUse24HourFormat;

  /// The `bt` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the boldText of the current device screen
  /// using the `MediaQuery` class.
  bool get bt => _mq.boldText;

  /// The `danims` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the disableAnimations of the current device screen
  /// using the `MediaQuery` class.
  bool get danims => _mq.disableAnimations;

  /// The `df` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the displayFeatures of the current device screen
  /// using the `MediaQuery` class.
  List<DisplayFeature> get df => _mq.displayFeatures;

  /// The `pb` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the platformBrightness of the current device screen
  /// using the `MediaQuery` class.
  Brightness get pb => _mq.platformBrightness;

  /// The `gs` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the gestureSettings of the current device screen
  /// using the `MediaQuery` class.
  DeviceGestureSettings get gs => _mq.gestureSettings;

  /// The `hc` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the highContrast of the current device screen
  /// using the `MediaQuery` class.
  bool get hc => _mq.highContrast;

  /// The `navmode` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the navigationMode of the current device screen
  /// using the `MediaQuery` class.
  NavigationMode get navmode => _mq.navigationMode;

  /// The `sgi` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the systemGestureInsets of the current device screen
  /// using the `MediaQuery` class.
  EdgeInsets get sgi => _mq.systemGestureInsets;

  /// The `vp` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the viewPadding of the current device screen
  /// using the `MediaQuery` class.
  EdgeInsets get vp => _mq.viewPadding;

  //*[End MediaQuery]

  //------------------------------------------------

  //*[Start ThemeData]

  ThemeData get _th => Theme.of(this);

  ColorScheme get cs => _th.colorScheme;

  Color get canvascol => _th.canvasColor;

  Color get cardcol => _th.cardColor;

  Color get dbcol => _th.dialogBackgroundColor;

  Color get discol => _th.disabledColor;

  Color get divcol => _th.dividerColor;

  Color get focuscol => _th.focusColor;

  Color get hlcol => _th.highlightColor;

  Color get hintcol => _th.hintColor;

  Color get hovcol => _th.hoverColor;

  Color get indcol => _th.indicatorColor;

  Color get prmcol => _th.primaryColor;

  Color get prmdkcol => _th.primaryColorDark;

  Color get prmlgcol => _th.primaryColorLight;

  Color get scfbgcol => _th.scaffoldBackgroundColor;

  Color get sechdcol => _th.secondaryHeaderColor;

  Color get shadowcol => _th.shadowColor;

  Color get splcol => _th.splashColor;

  Color get unselcol => _th.unselectedWidgetColor;

  //*[End ThemeData]
}
