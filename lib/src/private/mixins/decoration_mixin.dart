import 'package:flutter/widgets.dart';

mixin DecorationMixin<T> {
  T curveCorners({double rad = 20});
  T curveOnlyTopCorners({double rad = 20});
  T curveOnly({double bl = 0, double br = 0, double tl = 0, double tr = 0});
  T curveOnlyBottomCorners({double rad = 20});
  T bgBlndMode(BlendMode blndmod);
  T shadows(List<BoxShadow>? boxShadow);
  T brdrCol(Color color);
  T col(Color color);
  T grdnt(Gradient gradient);
  T shape(BoxShape shape);
  T img(DecorationImage image);
}
