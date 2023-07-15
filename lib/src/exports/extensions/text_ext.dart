import 'dart:js_interop';

import 'package:flutter/widgets.dart';

extension TextExt on Text {
  Text text({
    Color? color,
    Color? backgroundColor,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Paint? background,
    String? debugLabel,
  }) {
    return Text(
      data!,
      key: key,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      selectionColor: selectionColor,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      style: style.isNull
          ? const TextStyle()
          : style!.copyWith(
              background: background,
              backgroundColor: backgroundColor,
              color: color,
              debugLabel: debugLabel,
              height: height,
              fontStyle: fontStyle,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              wordSpacing: wordSpacing,
              textBaseline: textBaseline,
              fontWeight: fontWeight,
              fontFamily: fontFamily,
              fontFamilyFallback: fontFamilyFallback,
            ),
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  /// The `bold` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with a bold font weight.
  Text bold() => MyText.copyWith(
        Text(
          data!,
          style: style.isNull
              ? const TextStyle(fontWeight: FontWeight.bold)
              : style!.copyWith(fontWeight: FontWeight.bold),
        ),
      );

  /// The `semibold` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with a semi-bold font weight.
  Text semibold() => MyText.copyWith(
        Text(
          data!,
          style: style.isNull
              ? const TextStyle(fontWeight: FontWeight.w600)
              : style!.copyWith(fontWeight: FontWeight.w600),
        ),
      );

  /// The function `col` returns a `Text` widget with a specified color.
  ///
  /// Args:
  ///   color (Color): The "color" parameter is of type "Color". It represents the desired color for the
  /// text.
  Text col(Color color) => MyText.copyWith(
        Text(
          data!,
          style: style.isNull
              ? TextStyle(color: color)
              : style!.copyWith(color: color),
        ),
      );

  /// The function `bgcol` takes a `Color` parameter and returns a `Text` widget with the specified
  /// background color.
  ///
  /// Args:
  ///   color (Color): The color parameter is of type Color, which represents a color in Flutter. It can
  /// be any valid color value, such as a named color from the Colors class or a custom color defined
  /// using the Color constructor.
  Text bgcol(Color color) => MyText.copyWith(
        Text(
          data!,
          style: style.isNull
              ? TextStyle(backgroundColor: color)
              : style!.copyWith(backgroundColor: color),
        ),
      );

  /// The function `fontfm` returns a `Text` widget with a specified font family.
  ///
  /// Args:
  ///   fm (String): The parameter "fm" is a string that represents the font family name.
  Text fontfm(String fm) => MyText.copyWith(
        Text(
          data!,
          style: style.isNull
              ? TextStyle(fontFamily: fm)
              : style!.copyWith(fontFamily: fm),
        ),
      );

  /// The function `fntsize` returns a `Text` widget with a specified font size.
  ///
  /// Args:
  ///   size (double): The size parameter is a double value that represents the desired font size for
  /// the text.
  Text fntsize(double size) => MyText.copyWith(
        Text(
          data!,
          style: style.isNull
              ? TextStyle(fontSize: size)
              : style!.copyWith(fontSize: size),
        ),
      );

  /// The `itlc` is an extension method on the `Text` widget in Flutter. It allows you
  /// to easily create a new `Text` widget with an italic font style.
  Text itlc() => MyText.copyWith(
        Text(
          data!,
          style: style.isNull
              ? const TextStyle(fontStyle: FontStyle.italic)
              : style!.copyWith(fontStyle: FontStyle.italic),
        ),
      );

  /// The `clip` is an extension method on the `Text` widget in Flutter. It allows you
  /// to easily create a new `Text` widget with the `TextOverflow.clip` property
  /// set as the overflow behavior.
  Text clip() => MyText.copyWith(
        Text(
          data!,
          overflow: TextOverflow.clip,
          style: style,
        ),
      );

  /// The `ellipsis` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with the `TextOverflow.ellipsis` property set as the overflow
  /// behavior.
  Text ellipsis() => MyText.copyWith(
        Text(
          data!,
          overflow: TextOverflow.ellipsis,
          style: style,
        ),
      );

  /// The `fade` is an extension method on the `Text` widget in Flutter. It allows you
  /// to easily create a new `Text` widget with the `TextOverflow.fade` property
  /// set as the overflow behavior.
  Text fade() => MyText.copyWith(
        Text(
          data!,
          overflow: TextOverflow.fade,
          style: style,
        ),
      );

  /// The `visible` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with the `TextOverflow.visible` property
  /// set as the overflow behavior.
  Text visible() => MyText.copyWith(
        Text(
          data!,
          overflow: TextOverflow.visible,
          style: style,
        ),
      );

  /// The function `shadows` applies a list of shadows to a text.
  ///
  /// Args:
  ///   sh (List<Shadow>): A list of `Shadow` objects.
  Text shadows(List<Shadow> sh) => MyText.copyWith(
        Text(
          data!,
          style: style.isNull
              ? TextStyle(shadows: sh)
              : style!.copyWith(shadows: sh),
        ),
      );

  /// The function returns a Text widget with a specified maximum number of lines.
  ///
  /// Args:
  ///   maxLines (int): The `maxLines` parameter specifies the maximum number of lines that the `Text`
  /// widget should occupy. If the text exceeds the specified number of lines, it will be truncated and
  /// an ellipsis (...) will be displayed to indicate that there is more text.
  Text mxlnes(int maxLines) => MyText.copyWith(
        Text(
          data!,
          maxLines: maxLines,
          style: style,
        ),
      );

  Text txtalgn() => MyText.copyWith(
        Text(
          data!,
          textAlign: textAlign,
          style: style,
        ),
      );
}

class MyText {
  static Text copyWith(Text text, {TextStyle? style}) {
    return Text(
      text.data!,
      key: text.key,
      locale: text.locale,
      maxLines: text.maxLines,
      overflow: text.overflow,
      selectionColor: text.selectionColor,
      semanticsLabel: text.semanticsLabel,
      softWrap: text.softWrap,
      strutStyle: text.strutStyle,
      style: style ?? text.style,
      textAlign: text.textAlign,
      textDirection: text.textDirection,
      textHeightBehavior: text.textHeightBehavior,
      textScaleFactor: text.textScaleFactor,
      textWidthBasis: text.textWidthBasis,
    );
  }
}
