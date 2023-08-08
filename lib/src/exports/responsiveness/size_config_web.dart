import 'package:flutter/widgets.dart';

extension SizeConfigWebExt on num {
  Size _mq(BuildContext context) => MediaQuery.of(context).size;

  ///ch stands for current height
  ///The only difference `num.ch()` and `num.h` is that [num.ch()] rebuilds
  ///everytime when context changes while the latter returns a fixed height
  ///even if screen height changes.
  ///ch is helpful in flutter web as windows are adjustable.
  double ch(BuildContext context) => this * (_mq(context).height / 100);

  ///cw stands for current width
  ///The only difference `num.cw()` and `num.w` is that [num.cw()] rebuilds
  ///everytime when context changes while the latter returns a fixed width
  ///even if screen width changes.
  ///cw is helpful in flutter web as windows are adjustable.
  double cw(BuildContext context) => this * (_mq(context).width / 100);

  ///csp stands for current Scale independent pixels
  ///The only difference `num.csp()` and `num.sp` is that [num.csp()] rebuilds
  ///everytime when context changes while the latter returns a fixed width
  ///even if screen width changes.
  ///csp is helpful in flutter web as windows are adjustable.
  double csp(BuildContext context) => this * (_mq(context).width / 3) / 100;
}
