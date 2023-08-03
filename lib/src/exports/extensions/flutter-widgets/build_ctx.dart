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

  /// The `csh` is an extension method defined on the `BuildContext`
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

  /// The `cs` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the colorScheme using the `Themedata` class.
  ColorScheme get cs => _th.colorScheme;

  /// The `canvascol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the canvasColor using the `Themedata` class.
  Color get canvascol => _th.canvasColor;

  /// The `cardcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the cardColor using the `Themedata` class.
  Color get cardcol => _th.cardColor;

  /// The `dbcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the dialogBackgroundColor using the `Themedata` class.
  Color get dbcol => _th.dialogBackgroundColor;

  /// The `discol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the disabledColor using the `Themedata` class.
  Color get discol => _th.disabledColor;

  /// The `divcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the dividerColor using the `Themedata` class.
  Color get divcol => _th.dividerColor;

  /// The `focuscol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the focusColor using the `Themedata` class.
  Color get focuscol => _th.focusColor;

  /// The `hlcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the highlightColor using the `Themedata` class.
  Color get hlcol => _th.highlightColor;

  /// The `hintcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the hintColor using the `Themedata` class.
  Color get hintcol => _th.hintColor;

  /// The `hovcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the hoverColor using the `Themedata` class.
  Color get hovcol => _th.hoverColor;

  /// The `indcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the indicatorColor using the `Themedata` class.
  Color get indcol => _th.indicatorColor;

  /// The `prmcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the primaryColor using the `Themedata` class.
  Color get prmcol => _th.primaryColor;

  /// The `prmdkcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the primaryColorDark using the `Themedata` class.
  Color get prmdkcol => _th.primaryColorDark;

  /// The `prmlgcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the primaryColorLight using the `Themedata` class.
  Color get prmlgcol => _th.primaryColorLight;

  /// The `scfbgcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the scaffoldBackgroundColor using the `Themedata` class.
  Color get scfbgcol => _th.scaffoldBackgroundColor;

  /// The `sechdcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the secondaryHeaderColor using the `Themedata` class.
  Color get sechdcol => _th.secondaryHeaderColor;

  /// The `shadowcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the shadowColor using the `Themedata` class.
  Color get shadowcol => _th.shadowColor;

  /// The `splcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the splashColor using the `Themedata` class.
  Color get splcol => _th.splashColor;

  /// The `unselcol` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the unselectedWidgetColor using the `Themedata` class.
  Color get unselcol => _th.unselectedWidgetColor;

  //*[End ThemeData]
}