import 'package:flutter/widgets.dart';

mixin DecorateMixin<T> {
  DecorateMixin curveCorners({double rad = 20});
  DecorateMixin curveOnlyTopCorners({double rad = 20});
  DecorateMixin curveOnly(
      {double bl = 0, double br = 0, double tl = 0, double tr = 0});
  DecorateMixin curveOnlyBottomCorners({double rad = 20});
  DecorateMixin bgBlndMode(BlendMode blndmod);
  DecorateMixin shadows(List<BoxShadow>? boxShadow);
  DecorateMixin brdrCol(Color color);
  DecorateMixin col(Color color);
  DecorateMixin grdnt(Gradient gradient);
  DecorateMixin shape(BoxShape shape);
  DecorateMixin img(DecorationImage image);
  Widget create();
}

class Vars {
  BorderRadiusGeometry? borderRadius;
  BlendMode? backgroundBlendMode;
  BoxBorder? border;
  Color? color;
  List<BoxShadow>? boxShadow;
  Gradient? gradient;
  DecorationImage? image;
  BoxShape shape = BoxShape.rectangle;
}
