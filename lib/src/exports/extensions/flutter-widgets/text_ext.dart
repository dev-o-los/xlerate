import 'package:flutter/widgets.dart';
import 'package:simple_sizer/src/exports/creators/text_creator.dart';

extension TextExt on Text {
  TextCreator get txt => TextCreator(data: data!, style: style);
}
