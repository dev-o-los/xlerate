import 'package:flutter/widgets.dart';
import 'package:simple_sizer/simple_sizer.dart';

double clampDimensionWithCurrentWidth(
        double minInpercent, double maxInpx, BuildContext context) =>
    (minInpercent.cw(context) >= maxInpx) ? maxInpx : minInpercent.cw(context);

double clampDimensionWithCurrentHeight(
        double minInpercent, double maxInpx, BuildContext context) =>
    (minInpercent.ch(context) >= maxInpx) ? maxInpx : minInpercent.ch(context);
