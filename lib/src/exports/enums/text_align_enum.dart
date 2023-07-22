import 'package:flutter/widgets.dart';

/// The code defines an enumeration called `TxtAl` that represents different text alignments. Each value
/// in the enumeration is associated with a `TextAlign` value. The `value` field is used to store the
/// corresponding `TextAlign` value for each enumeration value. The `const TxtAl(this.value)`
/// constructor is used to initialize the `value` field for each enumeration value.
enum TxtAl {
  /// In the given code, `c` is a member of the `TxtAl` enum and represents the alignment option
  /// `TextAlign.center`.
  c(TextAlign.center),

  /// In the given code, `jstfy` is a member of the `TxtAl` enum and represents the alignment option
  /// `TextAlign.justify`.
  jstfy(TextAlign.justify),

  /// In the given code, `lft` is a member of the `TxtAl` enum and represents the alignment option
  /// `TextAlign.left`.
  lft(TextAlign.left),

  /// In the given code, `rgt` is a member of the `TxtAl` enum and represents the alignment option
  /// `TextAlign.right`.
  rgt(TextAlign.right),

  /// In the given code, `strt` is a member of the `TxtAl` enum and represents the alignment option
  /// `TextAlign.start`.
  strt(TextAlign.start),

  /// In the given code, `end` is a member of the `TxtAl` enum and represents the alignment option
  /// `TextAlign.end`.
  end(TextAlign.end);

  final TextAlign value;

  const TxtAl(this.value);
}
