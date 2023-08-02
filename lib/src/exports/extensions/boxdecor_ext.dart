import 'package:flutter/widgets.dart';

extension BoxDecorExt on BoxDecoration {
  /// The function `_boxdecor` returns a `BoxDecoration` object with various properties such as border
  /// radius, background blend mode, border, color, box shadow, gradient, image, and shape.
  ///
  /// Args:
  ///   borderRadius (BorderRadius): The `borderRadius` parameter is used to specify the radius of the
  /// corners of the box. It can be set to a `BorderRadius` object which allows you to specify different
  /// radii for each corner or a single value to apply the same radius to all corners.
  ///   backgroundBlendMode (BlendMode): The backgroundBlendMode parameter is used to specify how the
  /// background color or gradient should blend with the content of the box. It takes a BlendMode enum
  /// value as its argument.
  ///   border (BoxBorder): The `border` parameter is used to specify the border of the box. It can be
  /// set to a `BoxBorder` object, which defines the border's width, color, and style.
  ///   color (Color): The color parameter is used to specify the background color of the box.
  ///   boxShadow (List<BoxShadow>): A list of BoxShadow objects that defines the shadow effect around
  /// the box.
  ///   gradient (Gradient): A gradient is a smooth transition between two or more colors. It can be used
  /// to fill a shape or as a background for a container.
  ///   shape (BoxShape): The shape parameter is used to define the shape of the box. It can be set to
  /// either BoxShape.rectangle or BoxShape.circle. Defaults to BoxShape
  ///
  /// Returns:
  ///   a BoxDecoration object.
  BoxDecoration _boxdecor({
    BorderRadius? borderRadius,
    BlendMode? backgroundBlendMode,
    BoxBorder? border,
    Color? color,
    List<BoxShadow>? boxShadow,
    Gradient? gradient,
    BoxShape shape = BoxShape.rectangle,
  }) {
    return BoxDecoration(
      backgroundBlendMode: this.backgroundBlendMode ?? backgroundBlendMode,
      border: this.border ?? border,
      borderRadius: this.borderRadius ?? borderRadius,
      boxShadow: this.boxShadow ?? boxShadow,
      color: this.color ?? color,
      gradient: this.gradient ?? gradient,
      image: image,
      shape: shape,
    );
  }

  /// The function returns a BoxDecoration with all corners curved by a given radius.
  ///
  /// Args:
  ///   rad (double): The "rad" parameter is a double that represents the radius value used to curve all
  /// corners of a BoxDecoration. By default, it is set to 20. Defaults to 20
  BoxDecoration curveAllCornersByRad({double rad = 20}) => _boxdecor(
        borderRadius: BorderRadius.circular(rad),
      );

  /// The function returns a BoxDecoration with only the top corners curved, with the specified radius.
  ///
  /// Args:
  ///   rad (double): The rad parameter is a double that represents the radius of the curved corners.
  /// Defaults to 20
  BoxDecoration curveOnlyTopCorners({double rad = 20}) => _boxdecor(
        borderRadius: BorderRadius.vertical(top: Radius.circular(rad)),
      );

  /// The function returns a BoxDecoration with only the bottom corners curved.
  ///
  /// Args:
  ///   rad (double): The rad parameter is a double that represents the radius of the circular corners
  /// for the bottom of the box decoration. Defaults to 20
  BoxDecoration curveOnlyBottomCorners({double rad = 20}) => _boxdecor(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(rad)),
      );

  /// The function returns a BoxDecoration with a specified background blend mode.
  ///
  /// Args:
  ///   blndmod (BlendMode): The parameter "blndmod" is of type BlendMode. It is used to specify the
  /// blend mode for the background of a BoxDecoration.
  BoxDecoration bgBlndMode(BlendMode blndmod) => _boxdecor(
        backgroundBlendMode: blndmod,
      );

  /// The function `shadows` returns a `BoxDecoration` with the specified list of `BoxShadow` objects.
  ///
  /// Args:
  ///   boxShadow (List<BoxShadow>): The `boxShadow` parameter is a list of `BoxShadow` objects. Each
  /// `BoxShadow` object represents a shadow effect that can be applied to a `BoxDecoration`.
  BoxDecoration shadows(List<BoxShadow>? boxShadow) =>
      _boxdecor(boxShadow: boxShadow);

  /// The function returns a BoxDecoration with a border of the specified color.
  ///
  /// Args:
  ///   color (Color): The color parameter is the color of the border that you want to apply to the box
  /// decoration.
  BoxDecoration outlineTheBorder(Color color) =>
      _boxdecor(border: Border.all(color: color));

  /// The function returns a BoxDecoration with a specified color.
  ///
  /// Args:
  ///   color (Color): The "color" parameter is of type "Color".
  BoxDecoration col(Color color) => _boxdecor(color: color);

  /// The function `grdnt` returns a `BoxDecoration` with the specified gradient.
  ///
  /// Args:
  ///   gradient (Gradient): The "gradient" parameter is of type "Gradient". It is used to specify the
  /// gradient for the BoxDecoration. A gradient is a smooth transition between two or more colors. It
  /// can be linear or radial, and can have multiple color stops to define the transition points.
  BoxDecoration grdnt(Gradient gradient) => _boxdecor(gradient: gradient);

  /// The function returns a BoxDecoration with the specified shape.
  ///
  /// Args:
  ///   shape (BoxShape): The shape parameter is of type BoxShape, which is an enum that represents
  /// different shapes for a BoxDecoration. The possible values for the shape parameter are
  /// BoxShape.rectangle and BoxShape.circle.
  BoxDecoration shape(BoxShape shape) => _boxdecor(shape: shape);
}
