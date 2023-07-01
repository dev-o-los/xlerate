import 'package:flutter/material.dart';

class ReactiveDestination {
  const ReactiveDestination({
    Key? key,
    required this.label,
    required this.icon,
    this.selectedIcon,
    this.indicatorColorForNavRail,
    this.indicatorShapeForNavRail,
    this.paddingForNavRail,
    this.tooltipForNavBar,
  });

  final String label;
  final IconData icon;
  final Widget? selectedIcon;
  final Color? indicatorColorForNavRail;
  final ShapeBorder? indicatorShapeForNavRail;
  final EdgeInsetsGeometry? paddingForNavRail;
  final String? tooltipForNavBar;

  ({NavigationRailDestination rail, NavigationDestination bar}) navType() {
    return (
      rail: NavigationRailDestination(
        icon: Icon(icon),
        label: Text(label),
        indicatorColor: indicatorColorForNavRail,
        indicatorShape: indicatorShapeForNavRail,
        padding: paddingForNavRail,
        selectedIcon: selectedIcon,
      ),
      bar: NavigationDestination(
        icon: Icon(icon),
        label: label,
        selectedIcon: selectedIcon,
        tooltip: tooltipForNavBar,
      )
    );
  }
}
