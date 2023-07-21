import 'package:flutter/widgets.dart';

enum TxtAl {
  c(TextAlign.center),

  jstfy(TextAlign.justify),

  lft(TextAlign.left),

  rgt(TextAlign.right),

  strt(TextAlign.start),

  end(TextAlign.end);

  final TextAlign value;

  const TxtAl(this.value);
}
