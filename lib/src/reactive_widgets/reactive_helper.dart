import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class ReactiveHelper {
  static NavigationRailDestination rail(ReactiveDestination destination) {
    return NavigationRailDestination(
      icon: Icon(destination.icon),
      label: Text(destination.label),
      indicatorColor: destination.indicatorColorForNavRail,
      padding: destination.paddingForNavRail,
      selectedIcon: destination.selectedIcon,
    );
  }

  static NavigationDestination bar(ReactiveDestination destination) {
    return NavigationDestination(
      icon: Icon(destination.icon),
      label: destination.label,
      selectedIcon: destination.selectedIcon,
      tooltip: destination.tooltipForNavBar,
    );
  }
}
