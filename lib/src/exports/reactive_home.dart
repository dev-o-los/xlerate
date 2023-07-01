import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';
import 'package:simple_sizer/src/views/reactive_mobile_view.dart';
import 'package:simple_sizer/src/views/reactive_tablet_view.dart';

class ReactiveHome extends StatelessWidget {
  const ReactiveHome({
    super.key,
    required this.pages,
    required this.reactiveDestinations,
    this.extendedForNavRail = false,
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

  // required parameters for both [NavRail] and [NavBar]

  final List<Widget> pages;
  final List<ReactiveDestination> reactiveDestinations;

  //These parameters will work for both [NavRail] and [NavBar]

  final Color? backgroundColor;
  final double? elevation;
  final Color? indicatorColor;
  final ShapeBorder? indicatorShape;

  //Specific params for [NavBar]
  final Color? backgroundColorForNavBar;
  final Color? shadowColorForNavBar;
  final Color? indicatorColorForNavBar;

  final double? elevationForNavBar;
  final double? bottomNavBarHeightForNavBar;

  final ShapeBorder? indicatorShapeForNavBar;

  final Duration? animationDurationForNavBar;

  final NavigationDestinationLabelBehavior? labelBehaviorForNavBar;

  //Specific params for [NavRail]
  final Color? backgroundColorForNavRail;
  final Color? indicatorColorForNavRail;

  final double? elevationForNavRail;
  final double? groupAlignmentForNavRail;
  final double? minExtendedWidthForNavRail;
  final double? minWidthForNavRail;

  final Widget? leadingForNavRail;
  final Widget? trailingForNavRail;

  final bool extendedForNavRail;
  final bool? useIndicatorForNavRail;

  final TextStyle? selectedLabelTextStyleForNavRail;
  final TextStyle? unselectedLabelTextStyleForNavRail;

  final IconThemeData? selectedIconThemeForNavRail;
  final IconThemeData? unselectedIconThemeForNavRail;

  final NavigationRailLabelType? labelTypeForNavRail;

  final ShapeBorder? indicatorShapeForNavRail;

  @override
  Widget build(BuildContext context) {
    return (context.csw > 500)
        ? ReactiveTabletView(
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
