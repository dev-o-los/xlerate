import 'package:flutter/widgets.dart';

extension TextExt on Text {
  /// The `bold` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with a bold font weight.
  Text get bold =>
      textHelper(data!, style!.copyWith(fontWeight: FontWeight.bold));

  /// The `semibold` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with a semi-bold font weight.
  Text get semibold =>
      textHelper(data!, style!.copyWith(fontWeight: FontWeight.w600));

  /// The function `col` returns a `Text` widget with a specified color.
  ///
  /// Args:
  ///   color (Color): The "color" parameter is of type "Color". It represents the desired color for the
  /// text.
  Text col(Color color) => textHelper(data!, style!.copyWith(color: color));

  /// The function `bgcol` takes a `Color` parameter and returns a `Text` widget with the specified
  /// background color.
  ///
  /// Args:
  ///   color (Color): The color parameter is of type Color, which represents a color in Flutter. It can
  /// be any valid color value, such as a named color from the Colors class or a custom color defined
  /// using the Color constructor.
  Text bgcol(Color color) =>
      textHelper(data!, style!.copyWith(backgroundColor: color));

  /// The function `fontfm` returns a `Text` widget with a specified font family.
  ///
  /// Args:
  ///   fm (String): The parameter "fm" is a string that represents the font family name.
  Text fontfm(String fm) => textHelper(data!, style!.copyWith(fontFamily: fm));

  /// The function `fntsize` returns a `Text` widget with a specified font size.
  ///
  /// Args:
  ///   size (double): The size parameter is a double value that represents the desired font size for
  /// the text.
  Text fntsize(double size) =>
      textHelper(data!, style!.copyWith(fontSize: size));

  /// The `itlc` is an extension method on the `Text` widget in Flutter. It allows you
  /// to easily create a new `Text` widget with an italic font style.
  Text get itlc =>
      textHelper(data!, style!.copyWith(fontStyle: FontStyle.italic));

  /// The `clip` is an extension method on the `Text` widget in Flutter. It allows you
  /// to easily create a new `Text` widget with the `TextOverflow.clip` property
  /// set as the overflow behavior.
  Text get clip =>
      textHelper(data!, style!.copyWith(overflow: TextOverflow.clip));

  /// The `ellipsis` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with the `TextOverflow.ellipsis` property set as the overflow
  /// behavior.
  Text get ellipsis =>
      textHelper(data!, style!.copyWith(overflow: TextOverflow.ellipsis));

  /// The `fade` is an extension method on the `Text` widget in Flutter. It allows you
  /// to easily create a new `Text` widget with the `TextOverflow.fade` property
  /// set as the overflow behavior.
  Text get fade =>
      textHelper(data!, style!.copyWith(overflow: TextOverflow.fade));

  /// The `visible` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with the `TextOverflow.visible` property
  /// set as the overflow behavior.
  Text get visible =>
      textHelper(data!, style!.copyWith(overflow: TextOverflow.visible));

  /// The function `shadows` applies a list of shadows to a text.
  ///
  /// Args:
  ///   sh (List<Shadow>): A list of `Shadow` objects.
  Text shadows(List<Shadow> sh) =>
      textHelper(data!, style!.copyWith(shadows: sh));
}

Text textHelper(String data, TextStyle style) {
  return Text(
    data,
    style: style,
  );
}
