import 'dart:js_interop';

import 'package:flutter/widgets.dart';

extension TextExt on Text {
  /// The `bold` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with a bold font weight.
  Text bold() => Text(
        data!,
        style: style.isNull
            ? const TextStyle(fontWeight: FontWeight.bold)
            : style!.copyWith(fontWeight: FontWeight.bold),
      );

  /// The `semibold` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with a semi-bold font weight.
  Text semibold() => Text(
        data!,
        style: style.isNull
            ? const TextStyle(fontWeight: FontWeight.w600)
            : style!.copyWith(fontWeight: FontWeight.w600),
      );

  /// The function `col` returns a `Text` widget with a specified color.
  ///
  /// Args:
  ///   color (Color): The "color" parameter is of type "Color". It represents the desired color for the
  /// text.
  Text col(Color color) => Text(
        data!,
        style: style.isNull
            ? TextStyle(color: color)
            : style!.copyWith(color: color),
      );

  /// The function `bgcol` takes a `Color` parameter and returns a `Text` widget with the specified
  /// background color.
  ///
  /// Args:
  ///   color (Color): The color parameter is of type Color, which represents a color in Flutter. It can
  /// be any valid color value, such as a named color from the Colors class or a custom color defined
  /// using the Color constructor.
  Text bgcol(Color color) => Text(
        data!,
        style: style.isNull
            ? TextStyle(backgroundColor: color)
            : style!.copyWith(backgroundColor: color),
      );

  /// The function `fontfm` returns a `Text` widget with a specified font family.
  ///
  /// Args:
  ///   fm (String): The parameter "fm" is a string that represents the font family name.
  Text fontfm(String fm) => Text(
        data!,
        style: style.isNull
            ? TextStyle(fontFamily: fm)
            : style!.copyWith(fontFamily: fm),
      );

  /// The function `fntsize` returns a `Text` widget with a specified font size.
  ///
  /// Args:
  ///   size (double): The size parameter is a double value that represents the desired font size for
  /// the text.
  Text fntsize(double size) => Text(
        data!,
        style: style.isNull
            ? TextStyle(fontSize: size)
            : style!.copyWith(fontSize: size),
      );

  /// The `itlc` is an extension method on the `Text` widget in Flutter. It allows you
  /// to easily create a new `Text` widget with an italic font style.
  Text itlc() => Text(
        data!,
        style: style.isNull
            ? const TextStyle(fontStyle: FontStyle.italic)
            : style!.copyWith(fontStyle: FontStyle.italic),
      );

  /// The `clip` is an extension method on the `Text` widget in Flutter. It allows you
  /// to easily create a new `Text` widget with the `TextOverflow.clip` property
  /// set as the overflow behavior.
  Text clip() => Text(
        data!,
        overflow: TextOverflow.clip,
        style: style,
      );

  /// The `ellipsis` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with the `TextOverflow.ellipsis` property set as the overflow
  /// behavior.
  Text ellipsis() => Text(
        data!,
        overflow: TextOverflow.ellipsis,
        style: style,
      );

  /// The `fade` is an extension method on the `Text` widget in Flutter. It allows you
  /// to easily create a new `Text` widget with the `TextOverflow.fade` property
  /// set as the overflow behavior.
  Text fade() => Text(
        data!,
        overflow: TextOverflow.fade,
        style: style,
      );

  /// The `visible` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with the `TextOverflow.visible` property
  /// set as the overflow behavior.
  Text visible() => Text(
        data!,
        overflow: TextOverflow.visible,
        style: style,
      );

  /// The function `shadows` applies a list of shadows to a text.
  ///
  /// Args:
  ///   sh (List<Shadow>): A list of `Shadow` objects.
  Text shadows(List<Shadow> sh) => Text(
        data!,
        style: style.isNull
            ? TextStyle(shadows: sh)
            : style!.copyWith(shadows: sh),
      );

  /// The function returns a Text widget with a specified maximum number of lines.
  ///
  /// Args:
  ///   maxLines (int): The `maxLines` parameter specifies the maximum number of lines that the `Text`
  /// widget should occupy. If the text exceeds the specified number of lines, it will be truncated and
  /// an ellipsis (...) will be displayed to indicate that there is more text.
  Text mxlnes(int maxLines) => Text(
        data!,
        maxLines: maxLines,
        style: style,
      );
}
