import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../private/simple_nav.dart';

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

  /// The `txtTh` is an extension method defined on the `BuildContext`
  /// class in Dart. It is used to get the textTheme using the `Themedata` class.
  TextTheme get txtTh => _th.textTheme;

  //*[End ThemeData]

  //*[Navigation Start]

  /// The `navTo` function is used to navigate to a new page in a Flutter app using the SimpleNav
  /// library.
  ///
  /// Args:
  ///   page (Widget): The page parameter is of type Widget and represents the page that you want to
  /// navigate to. It could be any widget that represents a screen or a page in your application.
  ///   settings (RouteSettings): The `settings` parameter is of type `RouteSettings?`, which allows you
  /// to provide additional settings for the route. These settings can include a name for the route,
  /// arguments to pass to the route, or any other custom data that you want to associate with the
  /// route. If you don't provide
  ///   maintainState (bool): The `maintainState` parameter determines whether the state of the current
  /// page should be preserved when navigating to the new page. If set to `true`, the state will be
  /// preserved. If set to `false`, the state will be discarded. The default value is `true`. Defaults
  /// to true
  ///   fullscreenDialog (bool): The `fullscreenDialog` parameter is a boolean value that determines
  /// whether the page should be displayed as a fullscreen dialog or not. If set to `true`, the page
  /// will be displayed as a fullscreen dialog, otherwise it will be displayed as a normal page.
  /// Defaults to false
  ///   allowSnapshotting (bool): The `allowSnapshotting` parameter determines whether the current page
  /// can be snapshot or not. If set to `true`, the current page can be snapshot, otherwise, it cannot
  /// be snapshot. Defaults to true
  void goTo(
    Widget page, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool allowSnapshotting = true,
  }) =>
      SimpleNav.navigateTo(
        this,
        page,
        NavigationType.push,
        allowSnapshotting: allowSnapshotting,
        fullscreenDialog: fullscreenDialog,
        settings: settings,
        maintainState: maintainState,
      );

  /// The function `navRplcmntTo` is used to navigate to a new page in a Flutter app, replacing the
  /// current page in the navigation stack.
  ///
  /// Args:
  ///   page (Widget): The page to navigate to. It is of type Widget, which represents a UI element in
  /// Flutter.
  ///   settings (RouteSettings): The `settings` parameter is an optional parameter of type
  /// `RouteSettings`. It allows you to provide additional settings for the route, such as the name of
  /// the route and any arguments that need to be passed to the route.
  ///   maintainState (bool): The `maintainState` parameter determines whether the state of the previous
  /// route should be maintained when the new route is pushed. If set to `true`, the state of the
  /// previous route will be preserved. If set to `false`, the state of the previous route will be
  /// discarded. The default value. Defaults to true
  ///   fullscreenDialog (bool): The `fullscreenDialog` parameter is a boolean value that determines
  /// whether the new page should be displayed as a fullscreen dialog or not. If set to `true`, the new
  /// page will be displayed as a fullscreen dialog, otherwise it will be displayed as a regular page.
  /// Defaults to false
  ///   allowSnapshotting (bool): The `allowSnapshotting` parameter determines whether the current page
  /// can be captured as a snapshot before navigating to the new page. This snapshot can be used to
  /// improve the transition animation when navigating back to the previous page. By default, it is set
  /// to `true`, meaning that the snapshotting is allowed. Defaults to true

  void rplcmntgoTo(
    Widget page, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool allowSnapshotting = true,
  }) =>
      SimpleNav.navigateTo(
        this,
        page,
        NavigationType.pushReplacement,
        allowSnapshotting: allowSnapshotting,
        fullscreenDialog: fullscreenDialog,
        maintainState: maintainState,
        settings: settings,
      );

  /// The function "pop" is used to navigate back to the previous screen and pass a result to it.
  ///
  /// Args:
  ///   result (dynamic): The "result" parameter is a dynamic type, which means it can hold any type of
  /// value. It is used to pass a result back to the previous screen when popping the current screen
  /// from the navigation stack.
  void pop({dynamic result}) => Navigator.pop(this, result);

  /// The function `navNamed` is used to navigate to a specific route in a Dart application.
  ///
  /// Args:
  ///   routeName (String): The route name is a string that represents the name of the route to navigate
  /// to. It is used to identify the specific route in the application's route table.
  void goToNamed(String routeName) => Navigator.pushNamed(this, routeName);

  //*[Navigation End]

  /// The `overlay` function inserts an overlay widget into the overlay stack of the current context,
  /// either above or below specified overlay entries.
  ///
  /// Args:
  ///   overlayWidget (Widget): The overlayWidget parameter is the widget that you want to display as an
  /// overlay on top of other widgets in the app.
  ///   above (OverlayEntry): The "above" parameter is an optional parameter of type OverlayEntry. It
  /// specifies an overlay entry that should be positioned above the current overlay entry being
  /// inserted. If provided, the overlay entry passed as the "above" parameter will be inserted above
  /// the current overlay entry in the overlay stack.
  ///   below (OverlayEntry): The "below" parameter is an optional parameter of type OverlayEntry. It
  /// specifies an overlay entry that should be positioned below the newly created overlay entry. If
  /// provided, the new overlay entry will be inserted below the specified overlay entry in the overlay
  /// stack.
  void overlay(
    Widget overlayWidget, {
    OverlayEntry? above,
    OverlayEntry? below,
  }) {
    final overlayEntry = OverlayEntry(builder: (context) => overlayWidget);
    Overlay.of(this).insert(overlayEntry, above: above, below: below);
  }

  /// The `dialogBx` function in Dart displays a dialog box using the provided widget builder function.
  ///
  /// Args:
  ///   box (Widget Function(BuildContext)): The `box` parameter is a required function that takes a
  /// `BuildContext` as an argument and returns a `Widget`. This function is used as the builder for the
  /// `showDialog` method.
  Future<void> dialogBx({required Widget Function(BuildContext) box}) =>
      showDialog(context: this, builder: box);

  /// The `botmSht` function in Dart displays a modal bottom sheet using the provided widget builder
  /// function.
  ///
  /// Args:
  ///   btmSht (Widget Function(BuildContext)): The `btmSht` parameter is a required function that takes
  /// a `BuildContext` as an argument and returns a `Widget`. This function is used as the builder for
  /// the `showModalBottomSheet` method, which will display a bottom sheet in the current context with
  /// the content returned by this
  Future<void> botmSht({required Widget Function(BuildContext) btmSht}) =>
      showModalBottomSheet(context: this, builder: btmSht);

  /// The function `snckBr` displays a `SnackBar` using the `ScaffoldMessenger` in Dart.
  ///
  /// Args:
  ///   snckBr (SnackBar): The `snckBr` parameter is of type `SnackBar` and it is required for the
  /// `snckBr` function. This function is responsible for showing a SnackBar message using the
  /// `ScaffoldMessenger` of the current context.
  void snckBr({required SnackBar snckBr}) =>
      ScaffoldMessenger.of(this).showSnackBar(snckBr);
}
