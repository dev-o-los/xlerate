import 'package:flutter/material.dart';
import '../../private/create_mixin.dart';

enum ShapeChoice { roundedrectborder, stadiumborder }

class Shaper implements CreateMixin<ShapeBorder> {
  static Shaper? _instance;

  Shaper._();

  static Shaper get instance => _instance ??= Shaper._();

  ShapeChoice? _choice;
  double _topLeft = 0.0;
  double _topRight = 0.0;
  double _bottomLeft = 0.0;
  double _bottomRight = 0.0;
  BorderRadius? _borderRadius;
  Color _borderColor = const Color(0xFF000000);
  double _borderWidth = 1.0;

  Shaper _setTopLeftRad(double rad) => this.._topLeft = rad;
  Shaper _setTopRightRad(double rad) => this.._topRight = rad;
  Shaper _setBottomLeftRad(double rad) => this.._bottomLeft = rad;
  Shaper _setBottomRightRad(double rad) => this.._bottomRight = rad;
  Shaper _setAllCornerRad(double rad) =>
      this.._borderRadius = BorderRadius.circular(rad);

  Shaper get roundedrectbrdr => this.._choice = ShapeChoice.roundedrectborder;
  Shaper get stadiumbrdr => this.._choice = ShapeChoice.stadiumborder;

  Shaper get curv10 => _setAllCornerRad(20);

  Shaper get curv15 => _setAllCornerRad(20);

  Shaper get curv20 => _setAllCornerRad(20);

  Shaper get curv25 => _setAllCornerRad(20);

  //--------------------------------------------

  Shaper get curvTL10 => _setTopLeftRad(10);

  Shaper get curvTR10 => _setTopRightRad(10);

  Shaper get curvBL10 => _setBottomLeftRad(10);

  Shaper get curvBR10 => _setBottomRightRad(10);

  //-------------------------------------------

  Shaper get curvTL15 => _setTopLeftRad(15);

  Shaper get curvTR15 => _setTopRightRad(15);

  Shaper get curvBL15 => _setBottomLeftRad(15);

  Shaper get curvBR15 => _setBottomRightRad(15);

  //-------------------------------------------

  Shaper get curvTL20 => _setTopLeftRad(20);

  Shaper get curvTR20 => _setTopRightRad(20);

  Shaper get curvBL20 => _setBottomLeftRad(20);

  Shaper get curvBR20 => _setBottomRightRad(20);

  //-------------------------------------------

  Shaper get curvTL25 => _setTopLeftRad(25);

  Shaper get curvTR25 => _setTopRightRad(25);

  Shaper get curvBL25 => _setBottomLeftRad(25);

  Shaper get curvBR25 => _setBottomRightRad(25);

  //-------------------------------------------

  Shaper col(Color color) => this.._borderColor = color;

  Shaper width(double width) => this.._borderWidth = width;

  //-------------------------------------------

  Shaper curveAll(double rad) => _setAllCornerRad(rad);

  Shaper curveTop(double rad) =>
      this.._borderRadius = BorderRadius.vertical(top: Radius.circular(rad));

  Shaper curveBttm(double rad) =>
      this.._borderRadius = BorderRadius.vertical(bottom: Radius.circular(rad));

  Shaper curveLft(double rad) =>
      this.._borderRadius = BorderRadius.horizontal(left: Radius.circular(rad));

  Shaper curveRgt(double rad) => this
    .._borderRadius = BorderRadius.horizontal(right: Radius.circular(rad));

  @override
  ShapeBorder create() {
    if (_choice == null) {
      throw Exception('Select a type of Shape Border');
    }

    if (_choice == ShapeChoice.roundedrectborder) {
      return RoundedRectangleBorder(
        borderRadius: _borderRadius ??
            BorderRadius.only(
              topLeft: Radius.circular(_topLeft),
              topRight: Radius.circular(_topRight),
              bottomLeft: Radius.circular(_bottomLeft),
              bottomRight: Radius.circular(_bottomRight),
            ),
        side: BorderSide(
          color: _borderColor,
          width: _borderWidth,
        ),
      );
    } else if (_choice == ShapeChoice.stadiumborder) {
      return StadiumBorder(
        side: BorderSide(
          color: _borderColor,
          width: _borderWidth,
        ),
      );
    } else {
      throw Exception('No such Shape Border Found');
    }
  }
}
