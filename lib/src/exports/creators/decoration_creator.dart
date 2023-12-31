import 'package:flutter/widgets.dart';
import 'package:xlerate/src/private/mixins/decoration_mixin.dart';

import '../../private/mixins/create_mixin.dart';

/// The `Decorate` class in Dart provides a convenient way to create and customize a `BoxDecoration`
/// object with various properties such as border radius, background blend mode, border, color, shadows,
/// gradient, shape, and image.
@protected
class Decorate
    implements CreateMixin<BoxDecoration>, DecorationMixin<Decorate> {
  /// The `Decorate._();` is a private constructor for the `Decorate` class. It is used to prevent the
  /// instantiation of the `Decorate` class from outside the class itself. By making the constructor
  /// private, it ensures that the `Decorate` class can only be instantiated from within the class
  /// itself, typically using a static getter method like `Decorate get instance => Decorate._();`.
  Decorate._();

  BorderRadiusGeometry? _borderRadius;
  BlendMode? _backgroundBlendMode;
  BoxBorder? _border;
  Color? _color;
  List<BoxShadow>? _boxShadow;
  Gradient? _gradient;
  DecorationImage? _image;
  BoxShape _shape = BoxShape.rectangle;

  /// This getter method allows access to a single instance of the `Decorate` class throughout the application.
  static Decorate get instance => Decorate._();

  /// The function decorates all corners of a widget with a specified radius.
  ///
  /// Args:
  ///   rad (double): The `rad` parameter is a double value that represents the radius of the border
  /// corners. It is used to create a `BorderRadius` object with circular corners. Defaults to 20
  @override
  Decorate curveCorners({double rad = 20}) =>
      this.._borderRadius = BorderRadius.circular(rad);

  /// The function decorates a widget with a border radius that only applies to the top corners.
  ///
  /// Args:
  ///   rad (double): The `rad` parameter is a double value that represents the radius of the top
  /// corners of the curve. Defaults to 20
  @override
  Decorate curveOnlyTopCorners({double rad = 20}) =>
      this.._borderRadius = BorderRadius.vertical(top: Radius.circular(rad));

  /// The function `curveOnly` decorates a widget with specific border radius values for each corner.
  ///
  /// Args:
  ///   bl (double): The parameter "bl" represents the border radius for the bottom left corner of the
  /// curve. Defaults to 0
  ///   br (double): The parameter "br" stands for "bottom right" and it represents the radius of the
  /// bottom right corner of the curve. Defaults to 0
  ///   tl (double): The parameter "tl" stands for "top left" and it represents the radius of the top
  /// left corner of the curve. Defaults to 0
  ///   tr (double): The parameter "tr" stands for "topRight" and it represents the radius of the top
  /// right corner of the curve. Defaults to 0
  @override
  Decorate curveOnly({
    double bl = 0,
    double br = 0,
    double tl = 0,
    double tr = 0,
  }) =>
      this
        .._borderRadius = BorderRadius.only(
          bottomLeft: Radius.circular(bl),
          bottomRight: Radius.circular(br),
          topLeft: Radius.circular(tl),
          topRight: Radius.circular(tr),
        );

  /// The function decorates a widget with a border radius that only applies to the bottom corners.
  ///
  /// Args:
  ///   rad (double): The `rad` parameter is a double that represents the radius of the bottom corners
  /// of the curve. Defaults to 20
  @override
  Decorate curveOnlyBottomCorners({double rad = 20}) =>
      this.._borderRadius = BorderRadius.vertical(bottom: Radius.circular(rad));

  /// The function `bgBlndMode` decorates an object by setting its background blend mode.
  ///
  /// Args:
  ///   blndmod (BlendMode): The parameter "blndmod" is of type BlendMode. It represents the blend mode
  /// to be applied to the background.
  @override
  Decorate bgBlndMode(BlendMode blndmod) =>
      this.._backgroundBlendMode = blndmod;

  /// The function "shadows" assigns a list of BoxShadow objects to the _boxShadow property.
  ///
  /// Args:
  ///   boxShadow (List<BoxShadow>): The parameter "boxShadow" is of type "List<BoxShadow>". It is used
  /// to specify a list of box shadows that will be applied to the decorated widget.
  @override
  Decorate shadows(List<BoxShadow>? boxShadow) => this.._boxShadow = boxShadow;

  /// The function `brdrCol` sets the border color of an object.
  ///
  /// Args:
  ///   color (Color): The color parameter is the color that will be used for the border.
  @override
  Decorate brdrCol(Color color) => this.._border = Border.all(color: color);

  /// The function "col" takes a Color object as a parameter and assigns it to the private variable
  /// "_color".
  ///
  /// Args:
  ///   color (Color): The color parameter is of type Color, which represents a color value.
  @override
  Decorate col(Color color) => this.._color = color;

  /// The function `grdnt` assigns a `Gradient` object to the `_gradient` property.
  ///
  /// Args:
  ///   gradient (Gradient): The gradient parameter is an instance of the Gradient class.
  @override
  Decorate grdnt(Gradient gradient) => this.._gradient = gradient;

  /// The function "shape" sets the shape of a box.
  ///
  /// Args:
  ///   shape (BoxShape): The shape parameter is of type BoxShape.
  @override
  Decorate shape(BoxShape shape) => this.._shape = shape;

  /// The function "img" takes a DecorationImage object as a parameter sets the image
  ///
  /// Args:
  ///   image (DecorationImage): The image parameter is of type DecorationImage, which represents an
  /// image that can be used for decorating a widget.
  @override
  Decorate img(DecorationImage image) => this.._image = image;

  /// The function creates a BoxDecoration object with specified properties.
  ///
  /// Returns:
  ///   a BoxDecoration object.
  @override
  BoxDecoration create() => BoxDecoration(
        borderRadius: _borderRadius,
        backgroundBlendMode: _backgroundBlendMode,
        border: _border,
        boxShadow: _boxShadow,
        color: _color,
        gradient: _gradient,
        shape: _shape,
        image: _image,
      );
}
