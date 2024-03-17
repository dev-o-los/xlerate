import 'package:xlerate/src/private/xlerate_utils.dart';

extension NumExt on int {
  /// This getter returns a `Duration` object with the number of seconds equal to the
  /// value of the `int` on which the getter is called.
  Duration get s => Duration(seconds: this);

  /// This getter returns a `Duration` object with the number of minutes equal to the
  /// value of the `int` on which the getter is called.
  Duration get min => Duration(minutes: this);

  /// This getter returns a `Duration` object with the number of milliseconds equal to the
  /// value of the `int` on which the getter is called.
  Duration get milli => Duration(milliseconds: this);

  /// This getter returns a `Duration` object with the number of microseconds equal to the
  /// value of the `int` on which the getter is called.
  Duration get micro => Duration(microseconds: this);

  /// Returns:
  /// The getter `monthName` returns the month abbreviation corresponding to the given index.
  /// For example, January is at index 1, February is at index 2, and so on until December at index 12
  String get monthName => XlerateUtils.getMonthName(this);
}
