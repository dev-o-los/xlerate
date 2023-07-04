import 'package:flutter/widgets.dart';

extension ExpandedExt on Widget {
  Expanded expd({int flex = 1}) => Expanded(flex: flex, child: this);

  SizedBox expdW() => SizedBox(
        width: double.infinity,
        child: Expanded(child: this),
      );

  Flexible flxbl({FlexFit fit = FlexFit.loose, int flex = 1}) => Flexible(
        fit: fit,
        flex: flex,
        child: this,
      );
}
