import 'package:flutter/widgets.dart';

import '../../../../xlerate.dart';

extension TextExt on Text {
  TextCreator get txt => TextCreator(data: data!, style: style);
}
