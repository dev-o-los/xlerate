import 'package:flutter/material.dart';
import 'package:xlerate/size_config_web.dart';

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

/// The function `clampTextSizeInRange` returns the minimum value between `minInpercent.csp(context)`
/// and `maxInpx`.
///
/// Args:
///   minInpercent (double): The minimum text size in percentage of the parent container's size.
///   maxInpx (double): The maximum text size in pixels.
///   context (BuildContext): The `BuildContext` object represents the current build context of the
/// widget tree. It provides information about the current state of the application, such as the current
/// theme, media query data, and localization settings.
///
/// ```dart
/// Text(
///     'simple_sizer',
///     height: clampTextSizeInRange(5, 30, context),
/// //Gives a scale independent pixels of 5% of scale independent pixels and
/// //stops after it has reached a scale independent pixels of 30 px
/// );
double clampTextSizeInRange(
        double minInpercent, double maxInpx, BuildContext context) =>
    (minInpercent.csp(context) >= maxInpx)
        ? maxInpx
        : minInpercent.csp(context);
