import 'package:flutter/material.dart';
import '../exports/reactive_widgets/reactive_destination.dart';

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
