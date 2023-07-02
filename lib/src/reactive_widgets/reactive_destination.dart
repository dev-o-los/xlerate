import 'package:flutter/material.dart';

class ReactiveDestination {
  /// The `ReactiveDestination` class represents a destination in a navigation rail or navigation bar,
  /// with customizable properties such as label, icon, selected icon, indicator color, indicator shape,
  /// padding, and tooltip.
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

  /// The `label` property in the `ReactiveDestination` class represents the text label for
  /// the destination. It is typically displayed alongside the icon in a navigation rail or
  /// navigation bar to provide a descriptive name for the destination.
  final String label;

  /// The `icon` property in the `ReactiveDestination` class represents the icon for the
  /// destination. It is typically displayed alongside the label in a navigation rail or
  /// navigation bar to provide a visual representation of the destination.
  final IconData icon;

  /// The `selectedIcon` property in the `ReactiveDestination` class represents an
  /// alternative icon that is displayed when the destination is selected. It allows you
  /// to customize the visual representation of the destination when it is active or
  /// selected.
  final Widget? selectedIcon;

  /// The `indicatorColorForNavRail` property in the `ReactiveDestination` class represents
  /// the color of the indicator that is displayed when the destination is selected in a
  /// navigation rail. It allows you to customize the color of the indicator to provide
  /// visual feedback to the user when a destination is active or selected.
  final Color? indicatorColorForNavRail;

  /// The `indicatorShapeForNavRail` property in the `ReactiveDestination` class
  /// represents the shape of the indicator that is displayed when the destination is
  /// selected in a navigation rail. It allows you to customize the shape of the
  /// indicator to provide visual feedback to the user when a destination is active
  /// or selected. The `indicatorShapeForNavRail` property should be set to a
  /// `ShapeBorder` object, such as `RoundedRectangleBorder` or `CircleBorder`, to
  /// define the shape of the indicator.
  final ShapeBorder? indicatorShapeForNavRail;

  /// The `paddingForNavRail` property in the `ReactiveDestination` class
  /// represents the padding around the destination in a navigation rail. It
  /// allows you to customize the spacing between the destination's icon and
  /// label, as well as the spacing between multiple destinations in the
  /// navigation rail. By setting the `paddingForNavRail` property to an
  /// `EdgeInsetsGeometry` object, you can define the amount of padding on
  /// each side of the destination.
  final EdgeInsetsGeometry? paddingForNavRail;

  /// The `tooltipForNavBar` property in the `ReactiveDestination` class represents the
  /// tooltip text that is displayed when the destination is hovered over in a navigation
  /// bar. It allows you to provide additional information or a description for the
  /// destination when the user hovers over it with their cursor.
  final String? tooltipForNavBar;
}
