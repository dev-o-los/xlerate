import 'package:simple_sizer/src/exports/text_creator.dart';

extension StringExt on String {
  bool isEquals(String val, {bool ignoreCase = false}) =>
      ignoreCase ? (toLowerCase() == val.toLowerCase()) : (this == val);

  TextCreator get txt => TextCreator(data: this);
}
