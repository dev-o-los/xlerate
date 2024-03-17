import 'package:xlerate/src/exports/extensions/data-types/string_ext.dart';
import 'package:xlerate/src/private/xlerate_utils.dart';

extension DateTimeExt on DateTime {
  /// The function `formatDate` takes a date in ISO 8601 format and returns a formatted date string with
  /// the day as ordinal (e.g., 1st, 2nd, 3rd).
  ///
  /// Returns:
  ///   The `formatDate` function is returning a formatted date string in the format "DDth Month YY"
  /// where DD is the day, Month is the month name, and YY is the last two digits of the year. If the
  /// day is 1, 2, or 3, it appends "st", "nd", or "rd" respectively to the day number.
  String formatDate() {
    final date = toIso8601String().split('T').first.split('-');
    final yr = date[0].substring(2);
    final mth = XlerateUtils.getMonthName(int.parse(date[1]));
    final dy = date[2];

    if (dy.isEquals('01')) {
      return '1st $mth $yr';
    } else if (dy.isEquals('02')) {
      return '2nd $mth $yr';
    } else if (dy.isEquals('03')) {
      return '3rd $mth $yr';
    } else {
      return '${dy}th $mth $yr';
    }
  }
}
