import 'package:flutter/widgets.dart';

/// The function returns a `BorderRadius` object with curved corners, where the radius of the curves is
/// specified by the `rad` parameter (default value is 20).
///
/// Args:
///   rad (double): The rad parameter is a double that represents the radius value for the circular
/// border. Defaults to 20
BorderRadius curveCorners({double rad = 20}) => BorderRadius.circular(rad);

/// The function returns a `BorderRadius` object with only the top corners curved.
///
/// Args:
///   rad (double): The rad parameter is a double that represents the radius value for the curved
/// corners. By default, it is set to 20. Defaults to 20
BorderRadius curveTop({double rad = 20}) =>
    BorderRadius.vertical(top: Radius.circular(rad));

/// The function returns a `BorderRadius` object with only the bottom corners curved.
///
/// Args:
///   rad (double): The `rad` parameter is a double that represents the radius value for the curved
/// corners. By default, it is set to 20. Defaults to 20
BorderRadius curveBttm({double rad = 20}) =>
    BorderRadius.vertical(bottom: Radius.circular(rad));

/// The `curveOnly` function in Dart creates a `BorderRadius` with specified corner radii.
///
/// Args:
///   tl (double): The `tl` parameter in the `curveOnly` function corresponds to the radius of the top
/// left corner of the border. Defaults to 0
///   tr (double): The `tr` parameter in the `BorderRadius curveOnly` function stands for the top right
/// corner radius of the border. It allows you to specify the radius for the top right corner of a
/// container or widget when creating a custom `BorderRadius` object. Defaults to 0
///   bl (double): The `bl` parameter in the `BorderRadius curveOnly` function stands for the border
/// radius value for the bottom-left corner of a container or widget. It allows you to specify the
/// amount of curve or rounding applied to the bottom-left corner of the container. Defaults to 0
///   br (double): The `br` parameter in the `BorderRadius curveOnly` function represents the radius of
/// the bottom right corner of the border. It allows you to specify the curvature of the bottom right
/// corner of a container or widget when creating a `BorderRadius` object using the `curveOnly`
/// function. Defaults to 0
BorderRadius curveOnly({
  double tl = 0,
  double tr = 0,
  double bl = 0,
  double br = 0,
}) =>
    BorderRadius.only(
      topLeft: Radius.circular(tl),
      topRight: Radius.circular(tr),
      bottomLeft: Radius.circular(bl),
      bottomRight: Radius.circular(br),
    );
