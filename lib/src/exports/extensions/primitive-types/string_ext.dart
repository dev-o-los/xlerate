import 'package:flutter/widgets.dart';

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

  bool get isNum {
    if (int.tryParse(this) != null) {
      return true;
    } else {
      return false;
    }
  }

  /// The line `void get pr => debugPrint(this);` is creating a getter method called `pr` for the
  /// `String` class. When this getter is called on a string object, it will print the string using the
  /// `debugPrint` function from the `flutter/widgets.dart` package. This is a convenient way to quickly
  /// print debug information during development.
  void get pr => debugPrint(this);
}
