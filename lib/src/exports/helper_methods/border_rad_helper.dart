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
BorderRadius curveOnlyTopCorners({double rad = 20}) =>
    BorderRadius.vertical(top: Radius.circular(rad));

/// The function returns a `BorderRadius` object with only the bottom corners curved.
///
/// Args:
///   rad (double): The `rad` parameter is a double that represents the radius value for the curved
/// corners. By default, it is set to 20. Defaults to 20
BorderRadius curveOnlyBottomCorners({double rad = 20}) =>
    BorderRadius.vertical(bottom: Radius.circular(rad));
