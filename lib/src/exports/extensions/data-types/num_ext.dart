extension NumExt on int {
  Duration get s => Duration(seconds: this);
  Duration get min => Duration(minutes: this);
  Duration get milli => Duration(milliseconds: this);
  Duration get micro => Duration(microseconds: this);
}
