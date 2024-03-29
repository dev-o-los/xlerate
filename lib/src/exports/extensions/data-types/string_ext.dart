import '../../../../xlerate.dart';

extension StringExt on String {
  /// The function checks if two strings are equal, with an option to ignore case sensitivity.
  ///
  /// Args:
  ///   val (String): The `val` parameter is a string that represents the value to compare with.
  ///   ignoreCase (bool): The `ignoreCase` parameter is a boolean value that determines whether the
  /// comparison should be case-sensitive or case-insensitive. If `ignoreCase` is set to `true`, the
  /// comparison will be case-insensitive, meaning that uppercase and lowercase letters will be
  /// considered equal. If `ignoreCase` is. Defaults to false
  bool isEquals(String val, {bool ignoreCase = false}) =>
      ignoreCase ? (toLowerCase() == val.toLowerCase()) : (this == val);

  /// The `String get truellipses => replaceAll('', '\u200B');` is a getter method that returns a
  /// modified version of the string. It replaces all occurrences of an empty string with the Unicode
  /// character `\u200B`, which represents a zero-width space. This effectively adds a zero-width space
  /// between each character in the string, creating a "true ellipsis" effect.
  String get truellipses => replaceAll('', '\u200B');

  /// The line `TextCreator get txt => TextCreator(data: this);` is creating a getter method called
  /// `txt` for the `String` class.
  TextCreator get txt => TextCreator(data: this);

  /// This getter method checks if the string can be parsed
  /// into an integer. If the parsing is successful and the result is not
  /// `null`, then the getter method returns `true`, indicating that the string represents a valid
  /// integer. Otherwise, it returns `false`.
  bool get isNum => int.tryParse(this) != null;
}

extension NullStringExt on Object? {
  /// This getter method checks if the string value it is called on is `null`.
  bool get isNull => this == null;
}
