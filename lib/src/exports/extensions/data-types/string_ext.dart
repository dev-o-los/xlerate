import 'package:simple_sizer/src/exports/text_creator.dart';

extension StringExt on String {
  bool isEquals(String val, {bool ignoreCase = false}) =>
      ignoreCase ? (toLowerCase() == val.toLowerCase()) : (this == val);

  String get truellipses => replaceAll('', '\u200B');

  TextCreator get txt => TextCreator(data: this);
}
