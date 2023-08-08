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
}
