import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';
import 'package:simple_sizer/src/views/reactive_mobile_view.dart';
import 'package:simple_sizer/src/views/reactive_bigscreen_view.dart';

class ReactiveHome extends StatelessWidget {
  /// The `ReactiveHome` class is a widget that displays either a `ReactiveTabletView` or a
  /// `ReactiveMobileView` based on the screen width.
  /// Meaning it helps you make reactive layouts multiple screens , like tablets , mobiles , desktop , web
  /// by adding navigation rail (for tablets and web apps) and navigation bar (for mobile phones)
  const ReactiveHome({
    super.key,
    required this.pages,
    required this.reactiveDestinations,
    this.extendedForNavRail = false,
    this.mobileWhenWidthIs = 500,
    this.backgroundColor,
    this.elevation,
    this.indicatorColor,
    this.indicatorShape,
    this.groupAlignmentForNavRail,
    this.minExtendedWidthForNavRail,
    this.minWidthForNavRail,
    this.leadingForNavRail,
    this.trailingForNavRail,
    this.useIndicatorForNavRail,
    this.selectedLabelTextStyleForNavRail,
    this.unselectedLabelTextStyleForNavRail,
    this.selectedIconThemeForNavRail,
    this.unselectedIconThemeForNavRail,
    this.labelTypeForNavRail,
    this.backgroundColorForNavBar,
    this.elevationForNavBar,
    this.indicatorColorForNavBar,
    this.indicatorShapeForNavBar,
    this.backgroundColorForNavRail,
    this.elevationForNavRail,
    this.indicatorColorForNavRail,
    this.indicatorShapeForNavRail,
    this.bottomNavBarHeightForNavBar,
    this.animationDurationForNavBar,
    this.shadowColorForNavBar,
    this.labelBehaviorForNavBar,
  });

  //* required parameters for both [NavRail] and [NavBar]

  /// The `required this.pages` parameter in the `ReactiveHome` class is used to specify the list of
  /// pages that will be displayed in the widget. It is marked as `required`, which means that it must
  /// be provided when creating an instance of the `ReactiveHome` widget. The `pages` parameter is a
  /// list of `Widget` objects, representing the different pages that will be shown in the widget.
  final List<Widget> pages;

  /// The `reactiveDestinations;` is a parameter in the `ReactiveHome`
  /// class. It is used to specify the list of `ReactiveDestination` objects that will be displayed in
  /// the widget. The `ReactiveDestination` class represents a destination in the navigation rail or
  /// navigation bar. Each `ReactiveDestination` object contains properties such as an icon, label, and
  /// route. These properties define how each destination will be displayed in the navigation rail or
  /// navigation bar.
  final List<ReactiveDestination> reactiveDestinations;

  //* These parameters will work for both [NavRail] and [NavBar]

  /// The line `backgroundColor;` is declaring a nullable variable named `backgroundColor`
  final Color? backgroundColor;

  /// The `elevation` parameter in the `ReactiveHome` class is used to specify the
  /// elevation of the widget. Elevation is a visual effect that gives the widget a sense
  /// of depth and makes it appear to be floating above the surface. The `elevation`
  /// parameter takes a `double` value, where a higher value will result in a higher
  /// elevation.
  final double? elevation;

  /// The `indicatorColor` parameter in the `ReactiveHome` class is used to specify the
  /// color of the indicator in the navigation rail or navigation bar. The indicator is a
  /// visual element that highlights the currently selected destination. By setting the
  /// `indicatorColor` parameter, you can customize the color of the indicator to match the
  /// design of your app.
  final Color? indicatorColor;

  /// The `indicatorShape` parameter in the `ReactiveHome` class is used to specify
  /// the shape of the indicator in the navigation rail or navigation bar. The
  /// indicator is a visual element that highlights the currently selected
  /// destination. By setting the `indicatorShape` parameter, you can customize the
  /// shape of the indicator to match the design of your app. The `indicatorShape`
  /// parameter takes a `ShapeBorder` object, which can be a predefined shape such as
  /// `RoundedRectangleBorder` or `CircleBorder`, or a custom shape created using the
  /// `ShapeBorder` class.
  final ShapeBorder? indicatorShape;

  //* Specific params for [NavBar]

  /// The `backgroundColorForNavBar` parameter is used to specify the background color of
  /// the navigation bar in the `ReactiveHome` widget. By setting the
  /// `backgroundColorForNavBar` parameter, you can customize the background color of the
  /// navigation bar to match the design of your app.
  final Color? backgroundColorForNavBar;

  /// The `shadowColorForNavBar` parameter is used to specify the color of the shadow that
  /// appears below the navigation bar in the `ReactiveHome` widget. By setting the
  /// `shadowColorForNavBar` parameter, you can customize the color of the shadow to match
  /// the design of your app.
  final Color? shadowColorForNavBar;

  /// The `indicatorColorForNavBar` parameter is used to specify the color of the indicator
  /// in the navigation bar. The indicator is a visual element that highlights the
  /// currently selected destination in the navigation bar. By setting the
  /// `indicatorColorForNavBar` parameter, you can customize the color of the indicator to
  /// match the design of your app.
  final Color? indicatorColorForNavBar;

  /// The `elevationForNavBar` parameter is used to specify the elevation of the
  /// navigation bar in the `ReactiveHome` widget. Elevation is a visual effect that gives
  /// the widget a sense of depth and makes it appear to be floating above the surface. By
  /// setting the `elevationForNavBar` parameter, you can customize the elevation of the
  /// navigation bar to match the design of your app.
  final double? elevationForNavBar;

  /// The `bottomNavBarHeightForNavBar` parameter is used to specify the height of the
  /// bottom navigation bar in the `ReactiveHome` widget when using the navigation bar
  /// layout. By setting the `bottomNavBarHeightForNavBar` parameter, you can customize
  /// the height of the bottom navigation bar to match the design of your app.
  final double? bottomNavBarHeightForNavBar;

  /// The `indicatorShapeForNavBar` parameter is used to specify the shape of the
  /// indicator in the navigation bar. The indicator is a visual element that
  /// highlights the currently selected destination in the navigation bar. By setting
  /// the `indicatorShapeForNavBar` parameter, you can customize the shape of the
  /// indicator to match the design of your app. The `indicatorShapeForNavBar`
  /// parameter takes a `ShapeBorder` object, which can be a predefined shape such as
  /// `RoundedRectangleBorder` or `CircleBorder`, or a custom shape created using the
  /// `ShapeBorder` class.
  final ShapeBorder? indicatorShapeForNavBar;

  /// The `animationDurationForNavBar` parameter in the `ReactiveHome` class is used to
  /// specify the duration of the animation when switching between different pages in
  /// the navigation bar. By setting the `animationDurationForNavBar` parameter, you can
  /// customize the duration of the animation to match the desired visual effect in your
  /// app.
  final Duration? animationDurationForNavBar;

  /// The `labelBehaviorForNavBar` parameter in the
  /// `ReactiveHome` class is used to specify the behavior of
  /// the labels in the navigation bar. It determines how the
  /// labels are displayed when there is limited space in the
  /// navigation bar.
  final NavigationDestinationLabelBehavior? labelBehaviorForNavBar;

  //*Specific params for [NavRail]

  /// The `backgroundColorForNavRail` parameter is used to specify the background color of
  /// the navigation rail in the `ReactiveHome` widget. By setting the
  /// `backgroundColorForNavRail` parameter, you can customize the background color of the
  /// navigation rail to match the design of your app.
  final Color? backgroundColorForNavRail;

  /// The `indicatorColorForNavRail` parameter is used to specify the color of the
  /// indicator in the navigation rail. The indicator is a visual element that highlights
  /// the currently selected destination in the navigation rail. By setting the
  /// `indicatorColorForNavRail` parameter, you can customize the color of the indicator to
  /// match the design of your app.
  final Color? indicatorColorForNavRail;

  /// The `elevationForNavRail` parameter in the `ReactiveHome` class is used to specify
  /// the elevation of the navigation rail in the widget. Elevation is a visual effect
  /// that gives the widget a sense of depth and makes it appear to be floating above the
  /// surface. By setting the `elevationForNavRail` parameter, you can customize the
  /// elevation of the navigation rail to match the design of your app.
  final double? elevationForNavRail;

  /// The `groupAlignmentForNavRail` parameter in the `ReactiveHome` class is used to
  /// specify the alignment of the reactive destinations in the navigation rail. It takes
  /// a `double` value between -1.0 and 1.0, where -1.0 represents aligning the
  /// destinations to the top of the navigation rail, 0.0 represents aligning the
  /// destinations to the center, and 1.0 represents aligning the destinations to the
  /// bottom of the navigation rail. By setting the `groupAlignmentForNavRail` parameter,
  /// you can customize the vertical alignment of the reactive destinations in the
  /// navigation rail to match the design of your app.
  final double? groupAlignmentForNavRail;

  ///The final width when the animation is complete for setting [extended] to true.
  ///This is only used when [extended] is set to true.
  ///The default value is 256.
  final double? minExtendedWidthForNavRail;

  /// The smallest possible width for the rail regardless of the destination's
  /// icon or label size.
  ///
  /// The default is 72.
  ///
  /// This value also defines the min width and min height of the destinations.
  ///
  /// To make a compact rail, set this to 56 and use
  /// [NavigationRailLabelType.none].
  final double? minWidthForNavRail;

  /// The leading widget in the rail that is placed above the destinations.
  ///
  /// It is placed at the top of the rail, above the [destinations]. Its
  /// location is not affected by [groupAlignment].
  ///
  /// This is commonly a [FloatingActionButton], but may also be a non-button,
  /// such as a logo.
  ///
  /// The default value is null.
  final Widget? leadingForNavRail;

  /// The trailing widget in the rail that is placed below the destinations.
  ///
  /// The trailing widget is placed below the last [NavigationRailDestination].
  /// It's location is affected by [groupAlignment].
  ///
  /// This is commonly a list of additional options or destinations that is
  /// usually only rendered when [extended] is true.
  ///
  /// The default value is null.
  final Widget? trailingForNavRail;

  /// Indicates that the [NavigationRail] should be in the extended state.
  ///
  /// The extended state has a wider rail container, and the labels are
  /// positioned next to the icons. [minExtendedWidth] can be used to set the
  /// minimum width of the rail when it is in this state.
  ///
  /// The rail will implicitly animate between the extended and normal state.
  ///
  /// If the rail is going to be in the extended state, then the [labelType]
  /// must be set to [NavigationRailLabelType.none].
  ///
  /// The default value is false.
  final bool extendedForNavRail;

  /// If `true`, adds a rounded [NavigationIndicator] behind the selected
  /// destination's icon.
  ///
  /// The indicator's shape will be circular if [labelType] is
  /// [NavigationRailLabelType.none], or a [StadiumBorder] if [labelType] is
  /// [NavigationRailLabelType.all] or [NavigationRailLabelType.selected].
  ///
  /// If `null`, defaults to [NavigationRailThemeData.useIndicator]. If that is
  /// `null`, defaults to [ThemeData.useMaterial3].
  final bool? useIndicatorForNavRail;

  /// The [TextStyle] of a destination's label when it is selected.
  ///
  /// When a [NavigationRailDestination] is not selected,
  /// [unselectedLabelTextStyle] will be used.
  ///
  /// The default value is based on the [TextTheme.bodyLarge] of
  /// [ThemeData.textTheme]. The default color is based on the [Theme]'s
  /// [ColorScheme.primary].
  ///
  /// Properties from this text style,
  /// or [NavigationRailThemeData.selectedLabelTextStyle] if this is null, are
  /// merged into the defaults.
  final TextStyle? selectedLabelTextStyleForNavRail;

  /// The [TextStyle] of a destination's label when it is unselected.
  ///
  /// When one of the [destinations] is selected the [selectedLabelTextStyle]
  /// will be used instead.
  ///
  /// The default value is based on the [Theme]'s [TextTheme.bodyLarge]. The
  /// default color is based on the [Theme]'s [ColorScheme.onSurface].
  ///
  /// Properties from this text style, or
  /// [NavigationRailThemeData.unselectedLabelTextStyle] if this is null, are
  /// merged into the defaults.
  final TextStyle? unselectedLabelTextStyleForNavRail;

  /// The visual properties of the icon in the selected destination.
  ///
  /// When a [NavigationRailDestination] is not selected,
  /// [unselectedIconTheme] will be used.
  ///
  /// The default value is the [Theme]'s [ThemeData.iconTheme] with a color
  /// of the [Theme]'s [ColorScheme.primary]. Properties from this icon theme,
  /// or [NavigationRailThemeData.selectedIconTheme] if this is null, are
  /// merged into the defaults.
  final IconThemeData? selectedIconThemeForNavRail;

  /// The visual properties of the icon in the unselected destination.
  ///
  /// If this field is not provided, or provided with any null properties, then
  /// a copy of the [IconThemeData.fallback] with a custom [NavigationRail]
  /// specific color will be used.
  ///
  /// The default value is the [Theme]'s [ThemeData.iconTheme] with a color
  /// of the [Theme]'s [ColorScheme.onSurface] with an opacity of 0.64.
  /// Properties from this icon theme, or
  /// [NavigationRailThemeData.unselectedIconTheme] if this is null, are
  /// merged into the defaults.
  final IconThemeData? unselectedIconThemeForNavRail;

  /// Defines the layout and behavior of the labels for the default, unextended
  /// [NavigationRail].
  ///
  /// When a navigation rail is [extended], the labels are always shown.
  ///
  /// The default value is [NavigationRailThemeData.labelType]. If
  /// [NavigationRailThemeData.labelType] is null, then the default value is
  /// [NavigationRailLabelType.none].
  final NavigationRailLabelType? labelTypeForNavRail;

  /// Overrides the default value of [NavigationRail]'s selection indicator shape,
  /// when [useIndicator] is true.
  ///
  /// If this is null, [NavigationRailThemeData.indicatorShape] is used. If
  /// that is null, defaults to [StadiumBorder].
  final ShapeBorder? indicatorShapeForNavRail;

  ///Specfiy at what screen width you want the mobile view (bottomNavBar)
  final double mobileWhenWidthIs;

  @override
  Widget build(BuildContext context) {
    /// The below code is a Dart function that returns a boolean value. It checks if the value of
    /// `context.csw` is greater than 500. If it is, the function returns `true`, otherwise it returns
    /// `false`.
    return (context.csw > mobileWhenWidthIs)
        ? ReactiveBigScreenView(
            backgroundColor: backgroundColorForNavRail ?? backgroundColor,
            elevation: elevationForNavRail ?? elevation,
            indicatorColor: indicatorColorForNavRail ?? indicatorColor,
            indicatorShape: indicatorShapeForNavRail ?? indicatorShape,
            pages: pages,
            reactiveDestinations: reactiveDestinations,
            extended: extendedForNavRail,
            groupAlignment: groupAlignmentForNavRail,
            labelType: labelTypeForNavRail,
            leading: leadingForNavRail,
            minExtendedWidth: minExtendedWidthForNavRail,
            minWidth: minWidthForNavRail,
            selectedIconTheme: selectedIconThemeForNavRail,
            selectedLabelTextStyle: selectedLabelTextStyleForNavRail,
            trailing: trailingForNavRail,
            unselectedIconTheme: unselectedIconThemeForNavRail,
            unselectedLabelTextStyle: unselectedLabelTextStyleForNavRail,
            useIndicator: useIndicatorForNavRail,
            key: key,
          )
        : ReactiveMobileView(
            backgroundColor: backgroundColorForNavBar ?? backgroundColor,
            elevation: elevationForNavBar ?? elevation,
            indicatorColor: indicatorColorForNavBar ?? indicatorColor,
            indicatorShape: indicatorShapeForNavBar ?? indicatorShape,
            pages: pages,
            reactiveDestinations: reactiveDestinations,
            animationDuration: animationDurationForNavBar,
            bottomNavBarHeight: bottomNavBarHeightForNavBar,
            labelBehavior: labelBehaviorForNavBar,
            shadowColor: shadowColorForNavBar,
            key: key,
          );
  }
}
