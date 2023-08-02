import 'package:flutter/widgets.dart';

BorderRadius curveCorners({double rad = 20}) => BorderRadius.circular(rad);

BorderRadius curveOnlyTopCorners({double rad = 20}) =>
    BorderRadius.vertical(top: Radius.circular(rad));

BorderRadius curveOnlyBottomCorners({double rad = 20}) =>
    BorderRadius.vertical(bottom: Radius.circular(rad));
