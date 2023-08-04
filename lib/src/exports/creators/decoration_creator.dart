import 'package:flutter/widgets.dart';

class Decorate {
  Decorate._();

  BorderRadiusGeometry? _borderRadius;
  BlendMode? _backgroundBlendMode;
  BoxBorder? _border;
  Color? _color;
  List<BoxShadow>? _boxShadow;
  Gradient? _gradient;
  DecorationImage? _image;
  BoxShape _shape = BoxShape.rectangle;

  static Decorate get instance => Decorate._();

  Decorate curveAllCorners({double rad = 20}) =>
      this.._borderRadius = BorderRadius.circular(rad);

  Decorate curveOnlyTopCorners({double rad = 20}) =>
      this.._borderRadius = BorderRadius.vertical(top: Radius.circular(rad));

  Decorate curveOnlyBottomCorners({double rad = 20}) =>
      this.._borderRadius = BorderRadius.vertical(bottom: Radius.circular(rad));

  Decorate bgBlndMode(BlendMode blndmod) =>
      this.._backgroundBlendMode = blndmod;

  Decorate shadows(List<BoxShadow>? boxShadow) => this.._boxShadow = boxShadow;

  Decorate outlineTheBorder(Color color) =>
      this.._border = Border.all(color: color);

  Decorate col(Color color) => this.._color = color;

  Decorate grdnt(Gradient gradient) => this.._gradient = gradient;

  Decorate shape(BoxShape shape) => this.._shape = shape;

  Decorate img(DecorationImage image) => this.._image = image;

  BoxDecoration create() {
    return BoxDecoration(
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
}
