import 'package:flutter/widgets.dart';

import 'align_cntr_ext.dart';

extension FracSzdBox on Widget {
  FractionallySizedBox fracSzdBox({double? hf, double? wf, Al al = Al.c}) =>
      FractionallySizedBox(
        heightFactor: hf,
        widthFactor: wf,
        alignment: al.value,
      );
}
