import 'package:flutter/widgets.dart';
import 'package:simple_sizer/src/exports/helper_methods/bottom_sheet_border_rad.dart';

extension BoxDecorExt on BoxDecoration {
  BoxDecoration boxdecor({
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
      border: border,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
      color: color,
      gradient: gradient,
      image: image,
      shape: shape,
    );
  }

  BoxDecoration curveTheRadBy({double rad = 20}) => boxdecor(
        borderRadius: BorderRadius.circular(rad),
      );

  BoxDecoration curveOnlyTopCorners({double rad = 20}) => boxdecor(
        borderRadius: curveTopRightLeftCornerByRad(rad: rad),
      );

  BoxDecoration curveOnlyBottomCorners({double rad = 20}) => boxdecor(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(rad),
          bottomRight: Radius.circular(rad),
        ),
      );

  BoxDecoration bgBlndMode(BlendMode blndmod) => boxdecor(
        backgroundBlendMode: blndmod,
      );

  BoxDecoration shadows(List<BoxShadow>? boxShadow) =>
      boxdecor(boxShadow: boxShadow);

  BoxDecoration col(Color color) => boxdecor(color: color);

  BoxDecoration grdnt(Gradient gradient) => boxdecor(gradient: gradient);

  BoxDecoration shape(BoxShape shape) => boxdecor(shape: shape);
}
