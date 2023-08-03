extension StringExt on String {
  bool isEquals(String val, {bool ignoreCase = false}) =>
      ignoreCase ? (toLowerCase() == val.toLowerCase()) : (this == val);
}
