import 'package:flutter/widgets.dart';

extension BoxDecorExt on BoxDecoration {
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

  BoxDecoration curveAllCornersByRad({double rad = 20}) => _boxdecor(
        borderRadius: BorderRadius.circular(rad),
      );

  BoxDecoration curveOnlyTopCorners({double rad = 20}) => _boxdecor(
        borderRadius: BorderRadius.vertical(top: Radius.circular(rad)),
      );

  BoxDecoration curveOnlyBottomCorners({double rad = 20}) => _boxdecor(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(rad)),
      );

  BoxDecoration bgBlndMode(BlendMode blndmod) => _boxdecor(
        backgroundBlendMode: blndmod,
      );

  BoxDecoration shadows(List<BoxShadow>? boxShadow) =>
      _boxdecor(boxShadow: boxShadow);

  BoxDecoration outlineTheBorder(Color color) =>
      _boxdecor(border: Border.all(color: color));

  BoxDecoration col(Color color) => _boxdecor(color: color);

  BoxDecoration grdnt(Gradient gradient) => _boxdecor(gradient: gradient);

  BoxDecoration shape(BoxShape shape) => _boxdecor(shape: shape);
}
