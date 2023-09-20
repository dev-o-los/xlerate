import 'package:flutter/widgets.dart';
import 'package:xlerate/src/private/exceptions.dart';
import '../../private/create_mixin.dart';

/// The `enum ShapeChoice { roundedrectborder, stadiumborder }` is defining an enumeration called
/// `ShapeChoice` with two possible values: `roundedrectborder` and `stadiumborder`. This enumeration is
/// used to represent the different choices for the shape of a border.
enum ShapeChoice { roundedrectborder, stadiumborder, beveledreactborder }

/// The `Shaper` class in Dart is a utility class that helps create different types of shape borders for
/// widgets.
class Shaper implements CreateMixin<ShapeBorder> {
  ///`Shaper._();` is a private constructor for the `Shaper` class. It is used to create an instance of
  /// the `Shaper` class within the class itself. The underscore before the constructor name indicates
  /// that it is a private constructor and can only be accessed within the class.
  Shaper._();

  /// The line `ShapeChoice? _choice;` is declaring a nullable variable `_choice` of type `ShapeChoice`.
  static ShapeChoice? _choice;

  double _topLeft = 0.0;
  double _topRight = 0.0;
  double _bottomLeft = 0.0;
  double _bottomRight = 0.0;
  BorderRadius? _borderRadius;
  Color _borderColor = const Color(0x00000000);
  double _borderWidth = 1.0;

  Shaper _setTopLeftRad(double rad) => this.._topLeft = rad;

  Shaper _setTopRightRad(double rad) => this.._topRight = rad;

  Shaper _setBottomLeftRad(double rad) => this.._bottomLeft = rad;

  Shaper _setBottomRightRad(double rad) => this.._bottomRight = rad;

  Shaper _setAllCornerRad(double rad) =>
      this.._borderRadius = BorderRadius.circular(rad);

  ///Use this to get the instance of `RoundedRectangleBorder()`
  static Shaper get roundrectbrdr {
    _choice = ShapeChoice.roundedrectborder;
    return Shaper._();
  }

  ///Use this to get the instance of `StadiumBorder()`
  static Shaper get stadiumbrdr {
    _choice = ShapeChoice.stadiumborder;
    return Shaper._();
  }

  ///Use this to get the instance of `BeveledRectangleBorder()`
  static Shaper get bevldrectbrdr {
    _choice = ShapeChoice.beveledreactborder;
    return Shaper._();
  }

  /// This method sets the corner radius of all four corners of the border to the
  /// specified value (10 in this case). So, `curv10` is a shorthand way to set the corner radius of all
  /// corners to 10.
  Shaper get curv10 => _setAllCornerRad(10);

  /// This method sets the corner radius of all four corners of the border to the
  /// specified value (15 in this case). So, `curv15` is a shorthand way to set the corner radius of all
  /// corners to 15.
  Shaper get curv15 => _setAllCornerRad(15);

  /// This method sets the corner radius of all four corners of the border to the
  /// specified value (20 in this case). So, `curv20` is a shorthand way to set the corner radius of all
  /// corners to 20.
  Shaper get curv20 => _setAllCornerRad(20);

  /// This method sets the corner radius of all four corners of the border to the
  /// specified value (25 in this case). So, `curv25` is a shorthand way to set the corner radius of all
  /// corners to 25.
  Shaper get curv25 => _setAllCornerRad(25);

  //--------------------------------------------

  /// It is a shorthand way to set the top right corner radius of the border to a specific value (10 in this case).
  Shaper get curvTL10 => _setTopLeftRad(10);

  /// It is a shorthand way to set the top left corner radius of the border to a specific value (10 in this case).
  Shaper get curvTR10 => _setTopRightRad(10);

  /// It is a shorthand way to set the bottom left corner radius of the border to a specific value (10 in this case).
  Shaper get curvBL10 => _setBottomLeftRad(10);

  /// It is a shorthand way to set the bottom right corner radius of the border to a specific value (10 in this case).
  Shaper get curvBR10 => _setBottomRightRad(10);

  //-------------------------------------------

  /// It is a shorthand way to set the top left corner radius of the border to a specific value (15 in this case).
  Shaper get curvTL15 => _setTopLeftRad(15);

  /// It is a shorthand way to set the top right corner radius of the border to a specific value (15 in this case).
  Shaper get curvTR15 => _setTopRightRad(15);

  /// It is a shorthand way to set the bottom left corner radius of the border to a specific value (15 in this case).
  Shaper get curvBL15 => _setBottomLeftRad(15);

  /// It is a shorthand way to set the bottom right corner radius of the border to a specific value (15 in this case).
  Shaper get curvBR15 => _setBottomRightRad(15);

  //-------------------------------------------

  /// It is a shorthand way to set the top left corner radius of the border to a specific value (20 in this case).
  Shaper get curvTL20 => _setTopLeftRad(20);

  /// It is a shorthand way to set the top right corner radius of the border to a specific value (20 in this case).
  Shaper get curvTR20 => _setTopRightRad(20);

  /// It is a shorthand way to set the bottom left corner radius of the border to a specific value (20 in this case).
  Shaper get curvBL20 => _setBottomLeftRad(20);

  /// It is a shorthand way to set the bottom right corner radius of the border to a specific value (20 in this case).
  Shaper get curvBR20 => _setBottomRightRad(20);

  //-------------------------------------------

  /// It is a shorthand way to set the top left corner radius of the border to a specific value (25 in this case).
  Shaper get curvTL25 => _setTopLeftRad(25);

  /// It is a shorthand way to set the top right corner radius of the border to a specific value (25 in this case).
  Shaper get curvTR25 => _setTopRightRad(25);

  /// It is a shorthand way to set the bottom left corner radius of the border to a specific value (25 in this case).
  Shaper get curvBL25 => _setBottomLeftRad(25);

  /// It is a shorthand way to set the bottom corner radius of the border to a specific value (25 in this case).
  Shaper get curvBR25 => _setBottomRightRad(25);

  //-------------------------------------------

  /// The function "col" sets the border color of the shape.
  ///
  /// Args:
  ///   color (Color): The color parameter is of type Color, which represents a color value.
  Shaper col(Color color) => this.._borderColor = color;

  /// The function sets the border width of the shape.
  ///
  /// Args:
  ///   width (double): The width parameter is a double value that represents the desired width of the
  /// shape's border.
  Shaper width(double width) => this.._borderWidth = width;

  //-------------------------------------------

  /// The function `curveAll` sets the corner radius of all corners to a given value.
  ///
  /// Args:
  ///   rad (double): The "rad" parameter represents the radius value for all corners of a shape.
  Shaper curveAll(double rad) => _setAllCornerRad(rad);

  /// The function `curveTop` curves only top corners.
  ///
  /// Args:
  ///   rad (double): The parameter "rad" represents the radius value used to create a curved top border
  /// for a shape.
  Shaper curveTop(double rad) =>
      this.._borderRadius = BorderRadius.vertical(top: Radius.circular(rad));

  /// The function `curveBttm` curves only bottom corners.
  ///
  /// Args:
  ///   rad (double): The parameter "rad" is a double value that represents the radius of the bottom
  /// corners of a shape.
  Shaper curveBttm(double rad) =>
      this.._borderRadius = BorderRadius.vertical(bottom: Radius.circular(rad));

  /// The function `curveLft` sets the horizontal left border radius of a shape to a given value.
  ///
  /// Args:
  ///   rad (double): The parameter "rad" is a double value that represents the radius of the left side
  /// of a horizontal border.
  Shaper curveLft(double rad) =>
      this.._borderRadius = BorderRadius.horizontal(left: Radius.circular(rad));

  /// The function `curveRgt` sets the horizontal right border radius of a shape to a given value.
  ///
  /// Args:
  ///   rad (double): The parameter "rad" is a double value representing the radius of the right border
  /// of a shape.
  Shaper curveRgt(double rad) => this
    .._borderRadius = BorderRadius.horizontal(right: Radius.circular(rad));

  /// The function `curveOnly` takes in optional parameters for the top left, top right, bottom left,
  /// and bottom right border radii and returns a `BorderRadius` object with only those specified radii.
  ///
  /// Args:
  ///   tl (double): The tl parameter represents the top left corner of the shape. It is of type double
  /// and can be nullable.
  ///   tr (double): The `tr` parameter represents the top right corner radius of the shape.
  ///   bl (double): The `bl` parameter represents the bottom left corner radius of the shape.
  ///   br (double): The parameter "br" stands for "bottomRight" and it represents the radius of the
  /// bottom-right corner of the shape.
  Shaper curveOnly({
    double? tl,
    double? tr,
    double? bl,
    double? br,
  }) =>
      this
        .._borderRadius = BorderRadius.only(
          topLeft: Radius.circular(tl ?? 0.0),
          topRight: Radius.circular(tr ?? 0.0),
          bottomLeft: Radius.circular(bl ?? 0.0),
          bottomRight: Radius.circular(br ?? 0.0),
        );

  /// The function creates a shape border based on the user's choice of shape.
  ///
  /// Returns:
  ///   The method is returning a ShapeBorder object.
  @override
  ShapeBorder create() {
    /// If it is null, it means that the user has not selected
    /// a type of shape border. In this case, an exception is thrown with the message 'Select a type of
    /// Shape Border'. This is done to ensure that the user selects a valid shape border before creating
    /// it.
    if (_choice == null) {
      throw Exception(shape_creator_error_msg);
    }

    final isBorderRadiusInStadiumBorder =
        _choice == ShapeChoice.stadiumborder && _getParamInfo();

    if (isBorderRadiusInStadiumBorder) {
      throw Exception(borderRadius_error_msg);
    }

    /// The code snippet is checking if the `_choice` variable is equal to
    /// `ShapeChoice.roundedrectborder`. If it is, it creates and returns a `RoundedRectangleBorder`
    /// object with the specified border radius, border color, and border width.
    if (_choice == ShapeChoice.roundedrectborder) {
      return RoundedRectangleBorder(
        borderRadius: _setBorderRadiusForCorners(),
        side: _setBorderSide(),
      );
    }

    /// The `else if` statement is checking if the `_choice` variable is equal to
    /// `ShapeChoice.stadiumborder`. If it is, it creates and returns a `StadiumBorder` object with the
    /// specified border color and border width.
    else if (_choice == ShapeChoice.stadiumborder) {
      return StadiumBorder(
        side: BorderSide(
          color: _borderColor,
          width: _borderWidth,
        ),
      );
    } else if (_choice == ShapeChoice.beveledreactborder) {
      return BeveledRectangleBorder(
        borderRadius: _setBorderRadiusForCorners(),
        side: _setBorderSide(),
      );
    }

    /// The `else` block with the `throw Exception` statement is executed when the value of `_choice`
    /// is neither `ShapeChoice.roundedrectborder` nor `ShapeChoice.stadiumborder`. This means that the
    /// user has selected an invalid shape border option.
    else {
      throw Exception(no_such_shape_error_msg);
    }
  }

  BorderSide _setBorderSide() => BorderSide(
        color: _borderColor,
        width: _borderWidth,
      );

  BorderRadius _setBorderRadiusForCorners() =>
      _borderRadius ??
      BorderRadius.only(
        topLeft: Radius.circular(_topLeft),
        topRight: Radius.circular(_topRight),
        bottomLeft: Radius.circular(_bottomLeft),
        bottomRight: Radius.circular(_bottomRight),
      );

  bool _getParamInfo() => (_borderRadius != null ||
      _topLeft != 0.0 ||
      _topRight != 0.0 ||
      _bottomLeft != 0.0 ||
      _bottomRight != 0.0);
}
