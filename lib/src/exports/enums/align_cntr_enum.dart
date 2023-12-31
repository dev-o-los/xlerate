import 'package:flutter/widgets.dart';

/// The code defines an enum called `Al` which represents different alignment options for widgets in
/// Flutter. Each alignment option is associated with a specific `AlignmentGeometry` value from the
/// `flutter/widgets.dart` package.
enum Al {
  /// In the given code, `c` is a member of the `Al` enum and represents the alignment option
  /// `Alignment.center`.
  c(Alignment.center),

  /// In the given code, `cl` is a member of the `Al` enum and represents the alignment option
  /// `Alignment.centerLeft`.
  cl(Alignment.centerLeft),

  /// In the given code, `cr` is a member of the `Al` enum and represents the alignment option
  /// `Alignment.centerRight`.
  cr(Alignment.centerRight),

  /// In the given code, `bl` is a member of the `Al` enum and represents the alignment option
  /// `Alignment.bottomLeft`.
  bl(Alignment.bottomLeft),

  /// In the given code, `br` is a member of the `Al` enum and represents the alignment option
  /// `Alignment.bottomRight`. It is associated with the `Alignment.bottomRight` value from the
  /// `flutter/widgets.dart` package.
  br(Alignment.bottomRight),

  /// In the given code, `bc` is a member of the `Al` enum and represents the alignment option
  /// `Alignment.bottomCenter`.
  bc(Alignment.bottomCenter),

  /// In the given code, `tl` is a member of the `Al` enum and represents the alignment option
  /// `Alignment.topLeft`.
  tl(Alignment.topLeft),

  /// In the given code, `tr` is a member of the `Al` enum and represents the alignment option
  /// `Alignment.topRight`.
  tr(Alignment.topRight),

  /// In the given code, `tc` is a member of the `Al` enum and represents the alignment option
  /// `Alignment.topCenter`.
  tc(Alignment.topCenter);

  final AlignmentGeometry value;

  const Al(this.value);
}
