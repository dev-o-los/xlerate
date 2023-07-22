import 'package:flutter/widgets.dart';

/// The function `allRoundedRectBrdr` returns a `RoundedRectangleBorder` with specified border radius,
/// color, stroke alignment, width, and style.
///
/// Args:
///   rad (double): The rad parameter is used to specify the radius of the rounded corners of the
/// border. The default value is 25. Defaults to 25
///   brdrcol (Color): The parameter "brdrcol" is used to specify the color of the border. It is of type
/// Color and has a default value of const Color(0xFF000000), which represents black color. Defaults to
/// const Color(0xFF000000)
///   strokeAlign (double): The `strokeAlign` parameter determines the alignment of the border stroke. A
/// value of -1 means that the stroke is centered on the border, while a value of 0 means that the
/// stroke is inside the border, and a value of 1 means that the stroke is outside the border. Defaults
/// to -1
///   brdrwidth (double): The `brdrwidth` parameter is used to specify the width of the border. It is of
/// type `double` and has a default value of `1.0`. Defaults to 1.0
///   brdrstyle (BorderStyle): The `brdrstyle` parameter is used to specify the style of the border. It
/// can take one of the following values from the `BorderStyle` enum:. Defaults to BorderStyle
RoundedRectangleBorder allRoundedRectBrdr({
  double rad = 25,
  Color brdrcol = const Color(0xFF000000),
  double strokeAlign = -1,
  double brdrwidth = 1.0,
  BorderStyle brdrstyle = BorderStyle.solid,
}) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(rad),
      side: BorderSide(
        color: brdrcol,
        strokeAlign: strokeAlign,
        style: brdrstyle,
        width: brdrwidth,
      ),
    );

/// The function `onlyRoundedRectBrdr` returns a `RoundedRectangleBorder` with customizable rounded
/// corners and border properties.
///
/// Args:
///   bl (bool): A boolean value indicating whether to round the bottom left corner of the border.
/// Defaults to false
///   tl (bool): A boolean value indicating whether to round the top left corner of the border. Defaults
/// to false
///   tr (bool): A boolean value indicating whether the top right corner of the border should be rounded
/// or not. Defaults to false
///   br (bool): A boolean value indicating whether the bottom right corner of the border should be
/// rounded. Defaults to false
///   rad (double): The "rad" parameter is used to specify the radius of the rounded corners of the
/// border. Defaults to 25
///   brdrcol (Color): The `brdrcol` parameter is used to specify the color of the border. It is of type
/// `Color` and its default value is `const Color(0xFF000000)`, which represents black color. Defaults
/// to const Color(0xFF000000)
///   strokeAlign (double): The `strokeAlign` parameter determines how the border stroke is aligned
/// relative to the border path. A value of -1 means the stroke is centered on the border path, while a
/// value of 0 means the stroke is inside the border path, and a value of 1 means the stroke is outside.
/// Defaults to -1
///   brdrwidth (double): The `brdrwidth` parameter is used to specify the width of the border. It is of
/// type `double` and the default value is `1.0`. Defaults to 1.0
///   brdrstyle (BorderStyle): The `brdrstyle` parameter is used to specify the style of the border. It
/// can take one of the following values from the `BorderStyle` enum:. Defaults to BorderStyle
RoundedRectangleBorder onlyRoundedRectBrdr({
  bool bl = false,
  bool tl = false,
  bool tr = false,
  bool br = false,
  double rad = 25,
  Color brdrcol = const Color(0xFF000000),
  double strokeAlign = -1,
  double brdrwidth = 1.0,
  BorderStyle brdrstyle = BorderStyle.solid,
}) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: bl ? Radius.circular(rad) : Radius.zero,
        bottomRight: br ? Radius.circular(rad) : Radius.zero,
        topLeft: tl ? Radius.circular(rad) : Radius.zero,
        topRight: tr ? Radius.circular(rad) : Radius.zero,
      ),
      side: BorderSide(
        color: brdrcol,
        strokeAlign: strokeAlign,
        style: brdrstyle,
        width: brdrwidth,
      ),
    );

/// The function `verRoundedRectBrdr` returns a `RoundedRectangleBorder` with customizable vertical
/// border radius, color, width, and style.
///
/// Args:
///   t (bool): A boolean value indicating whether the top border should be rounded or not. If true, the
/// top border will be rounded with a radius of "rad". If false, the top border will be straight.
/// Defaults to false
///   b (bool): The parameter "b" is a boolean value that determines whether the bottom border of the
/// rounded rectangle should be rounded or not. If "b" is set to true, the bottom border will be rounded
/// with a radius specified by the "rad" parameter. If "b" is set to false,. Defaults to false
///   rad (double): The "rad" parameter is used to specify the radius of the rounded corners of the
/// border. Defaults to 25
///   brdrcol (Color): The "brdrcol" parameter is used to specify the color of the border. It is of type
/// "Color" and has a default value of "const Color(0xFF000000)" which represents black color. Defaults
/// to const Color(0xFF000000)
///   strokeAlign (double): The `strokeAlign` parameter determines how the border is aligned with the
/// shape. A value of -1 means the border is centered on the shape, while a value of 0 means the border
/// is inside the shape, and a value of 1 means the border is outside the shape. Defaults to -1
///   brdrwidth (double): The brdrwidth parameter is used to specify the width of the border. It is of
/// type double and has a default value of 1.0. Defaults to 1.0
///   brdrstyle (BorderStyle): The `brdrstyle` parameter is used to specify the style of the border. It
/// is of type `BorderStyle` which is an enum that represents different border styles. The available
/// options for `brdrstyle` are:. Defaults to BorderStyle
RoundedRectangleBorder verRoundedRectBrdr({
  bool t = false,
  bool b = false,
  double rad = 25,
  Color brdrcol = const Color(0xFF000000),
  double strokeAlign = -1,
  double brdrwidth = 1.0,
  BorderStyle brdrstyle = BorderStyle.solid,
}) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: t ? Radius.circular(rad) : Radius.zero,
        bottom: b ? Radius.circular(rad) : Radius.zero,
      ),
      side: BorderSide(
        color: brdrcol,
        strokeAlign: strokeAlign,
        style: brdrstyle,
        width: brdrwidth,
      ),
    );

/// The function `horzRoundedRectBrdr` returns a `RoundedRectangleBorder` with customizable horizontal
/// rounded corners and border properties.
///
/// Args:
///   l (bool): A boolean value indicating whether the left side of the rounded rectangle border should
/// be rounded or not. Defaults to false
///   r (bool): A boolean value indicating whether the right side of the rounded rectangle should be
/// rounded or not. Defaults to false
///   rad (double): The "rad" parameter represents the radius of the rounded corners of the border.
/// Defaults to 25
///   brdrcol (Color): The brdrcol parameter is used to specify the color of the border. It is of type
/// Color and its default value is set to const Color(0xFF000000), which represents black color.
/// Defaults to const Color(0xFF000000)
///   strokeAlign (double): The `strokeAlign` parameter determines how the border is aligned with the
/// shape. A value of -1 means that the border is centered on the shape's outline, while a value of 0
/// means that the border is inside the shape, and a value of 1 means that the border is outside.
/// Defaults to -1
///   brdrwidth (double): The `brdrwidth` parameter is used to specify the width of the border. It is of
/// type `double` and the default value is `1.0`. Defaults to 1.0
///   brdrstyle (BorderStyle): The `brdrstyle` parameter is used to specify the style of the border. It
/// can take one of the following values from the `BorderStyle` enum:. Defaults to BorderStyle
RoundedRectangleBorder horzRoundedRectBrdr({
  bool l = false,
  bool r = false,
  double rad = 25,
  Color brdrcol = const Color(0xFF000000),
  double strokeAlign = -1,
  double brdrwidth = 1.0,
  BorderStyle brdrstyle = BorderStyle.solid,
}) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(
        left: l ? Radius.circular(rad) : Radius.zero,
        right: r ? Radius.circular(rad) : Radius.zero,
      ),
      side: BorderSide(
        color: brdrcol,
        strokeAlign: strokeAlign,
        style: brdrstyle,
        width: brdrwidth,
      ),
    );
