import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class ReactiveHelper {
  static ({NavigationRailDestination rail, NavigationDestination bar}) navType(
      ReactiveDestination destination) {
    return (
      rail: NavigationRailDestination(
        icon: Icon(destination.icon),
        label: Text(destination.label),
        indicatorColor: destination.indicatorColorForNavRail,
        padding: destination.paddingForNavRail,
        selectedIcon: destination.selectedIcon,
      ),
      bar: NavigationDestination(
        icon: Icon(destination.icon),
        label: destination.label,
        selectedIcon: destination.selectedIcon,
        tooltip: destination.tooltipForNavBar,
      )
    );
  }
}
