import 'package:flutter/material.dart';
import 'package:simple_sizer/src/exports/responsiveness/size_config.dart';

/// The function clamps a dimension value between a minimum percentage and a maximum pixel value based
/// on the current width of the context.
///
/// Args:
///   minInpercent (double): The minimum dimension value in percentage of the current width.
///   maxInpx (double): The maximum width in pixels.
///   context (BuildContext): The `BuildContext` object represents the current build context of the
/// widget tree. It provides information about the current state of the application, such as the size
/// and position of widgets.
///
/// ```dart
/// Container(
///     color: Colors.red,
///     width: clampDimensionWithCurrentWidth(50, 500, context),
///   //Gives a width of 50% of current-width and
///   //stops after it has reached a width of 500 px
/// );
/// ```
double clampWidthInRange(
        double minInpercent, double maxInpx, BuildContext context) =>
    (minInpercent.cw(context) >= maxInpx) ? maxInpx : minInpercent.cw(context);

/// The function clamps a dimension value between a minimum percentage of the current height and a
/// maximum pixel value.
///
/// Args:
///   minInpercent (double): The minimum dimension value in percentage of the current height.
///   maxInpx (double): The maximum value in pixels that the dimension can have.
///   context (BuildContext): The `BuildContext` object represents the current build context of the
/// widget tree. It provides information about the current state of the application and allows access to
/// various properties and methods related to the current build context.
///
/// ```dart
/// Container(
///     color: Colors.red,
///     height: clampDimensionWithCurrentHeight(50, 500, context),
/// //Gives a height of 50% of current-height and
/// //stops after it has reached a height of 500 px
/// );
/// ```
double clampHeightInRange(
        double minInpercent, double maxInpx, BuildContext context) =>
    (minInpercent.ch(context) >= maxInpx) ? maxInpx : minInpercent.ch(context);
