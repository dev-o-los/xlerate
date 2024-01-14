import 'package:xlerate/src/exports/extensions/data-types/string_ext.dart';

extension DateTimeExt on DateTime {
  String formatDate() {
    final date = toIso8601String().split('T').first.split('-');
    final yr = date[0].substring(2);
    final mth = _getMonthName(int.parse(date[1]));
    final dy = date[2];

    if (dy.isEquals('1')) {
      return '1st $mth\'$yr';
    } else if (dy.isEquals('2')) {
      return '2nd $mth\'$yr';
    } else if (dy.isEquals('3')) {
      return '3rd $mth\'$yr';
    } else {
      return '${dy}th $mth , $yr';
    }
  }
}

String _getMonthName(int index) {
  final list = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  return list[index - 1];
}
