import 'package:flutter/widgets.dart';

import '../../../../simple_sizer.dart';

extension TextExt on Text {
  TextCreator get txt => TextCreator(data: data!, style: style);
}
