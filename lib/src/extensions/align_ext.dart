import 'package:flutter/widgets.dart';

enum Al {
  c(Alignment.center),
  cl(Alignment.centerLeft),
  cr(Alignment.centerRight),
  bl(Alignment.bottomLeft),
  br(Alignment.bottomRight),
  bc(Alignment.bottomCenter),
  tl(Alignment.topLeft),
  tr(Alignment.topRight),
  tc(Alignment.topCenter);

  final AlignmentGeometry value;

  const Al(this.value);
}

extension AlignExt on Widget {
  Align algn({double? hf, double? wf, Al al = Al.c}) => Align(
        alignment: al.value,
        heightFactor: hf,
        widthFactor: wf,
        child: this,
      );

  Center cntr({double? hf, double? wf}) =>
      Center(heightFactor: hf, widthFactor: wf, child: this);
}
