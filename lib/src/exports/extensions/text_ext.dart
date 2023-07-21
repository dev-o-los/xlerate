import 'dart:js_interop';
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:simple_sizer/src/exports/enums/text_align_enum.dart';

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
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    List<FontFeature>? fontFeatures,
    List<FontVariation>? fontVariations,
    Paint? foreground,
    bool? inherit,
    TextLeadingDistribution? leadingDistribution,
    Locale? textlocale,
    TextOverflow? textoverflow,
    String? package,
    List<Shadow>? shadows,
    TextOverflow? overflow,
    int? maxLines,
    TextAlign? textAlign,
  }) {
    return Text(
      data!,
      key: key,
      locale: locale,
      maxLines: this.maxLines ?? maxLines,
      overflow: this.overflow ?? overflow,
      textAlign: this.textAlign ?? textAlign,
      selectionColor: selectionColor,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
      style: style.isNull
          ? TextStyle(
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
              decoration: decoration,
              decorationColor: decorationColor,
              decorationStyle: decorationStyle,
              decorationThickness: decorationThickness,
              fontFeatures: fontFeatures,
              fontVariations: fontVariations,
              foreground: foreground,
              inherit: inherit ?? true,
              leadingDistribution: leadingDistribution,
              locale: textlocale,
              overflow: textoverflow,
              package: package,
              shadows: shadows,
            )
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
              decoration: decoration,
              decorationColor: decorationColor,
              decorationStyle: decorationStyle,
              decorationThickness: decorationThickness,
              fontFeatures: fontFeatures,
              fontVariations: fontVariations,
              foreground: foreground,
              inherit: inherit,
              leadingDistribution: leadingDistribution,
              locale: textlocale,
              overflow: textoverflow,
              package: package,
              shadows: shadows,
            ),
    );
  }

  /// The `bold` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with a bold font weight.
  Text bold() => text(fontWeight: FontWeight.bold);

  /// The `semibold` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with a semi-bold font weight.
  Text semibold() => text(fontWeight: FontWeight.w600);

  /// The function `col` returns a `Text` widget with a specified color.
  ///
  /// Args:
  ///   color (Color): The "color" parameter is of type "Color". It represents the desired color for the
  /// text.
  Text col(Color color) => text(color: color);

  /// The function `bgcol` takes a `Color` parameter and returns a `Text` widget with the specified
  /// background color.
  ///
  /// Args:
  ///   color (Color): The color parameter is of type Color, which represents a color in Flutter. It can
  /// be any valid color value, such as a named color from the Colors class or a custom color defined
  /// using the Color constructor.
  Text bgcol(Color color) => text(backgroundColor: color);

  /// The function `fontfm` returns a `Text` widget with a specified font family.
  ///
  /// Args:
  ///   fm (String): The parameter "fm" is a string that represents the font family name.
  Text fontfm(String fm) => text(fontFamily: fm);

  /// The function `fntsize` returns a `Text` widget with a specified font size.
  ///
  /// Args:
  ///   size (double): The size parameter is a double value that represents the desired font size for
  /// the text.
  Text fntsize(double size) => text(fontSize: size);

  /// The `itlc` is an extension method on the `Text` widget in Flutter. It allows you
  /// to easily create a new `Text` widget with an italic font style.
  Text itlc() => text(fontStyle: FontStyle.italic);

  /// The `clip` is an extension method on the `Text` widget in Flutter. It allows you
  /// to easily create a new `Text` widget with the `TextOverflow.clip` property
  /// set as the overflow behavior.
  Text clip() => text(overflow: TextOverflow.clip);

  /// The `ellipsis` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with the `TextOverflow.ellipsis` property set as the overflow
  /// behavior.
  Text ellipsis() => text(overflow: TextOverflow.ellipsis);

  /// The `fade` is an extension method on the `Text` widget in Flutter. It allows you
  /// to easily create a new `Text` widget with the `TextOverflow.fade` property
  /// set as the overflow behavior.
  Text fade() => text(overflow: TextOverflow.fade);

  /// The `visible` is an extension method on the `Text` widget in Flutter. It allows you to
  /// easily create a new `Text` widget with the `TextOverflow.visible` property
  /// set as the overflow behavior.
  Text visible() => text(overflow: TextOverflow.visible);

  /// The function `shadows` applies a list of shadows to a text.
  ///
  /// Args:
  ///   sh (List<Shadow>): A list of `Shadow` objects.
  Text shadows(List<Shadow> sh) => text(shadows: sh);

  /// The function returns a Text widget with a specified maximum number of lines.
  ///
  /// Args:
  ///   maxLines (int): The `maxLines` parameter specifies the maximum number of lines that the `Text`
  /// widget should occupy. If the text exceeds the specified number of lines, it will be truncated and
  /// an ellipsis (...) will be displayed to indicate that there is more text.
  Text mxlnes(int maxLines) => text(maxLines: maxLines);

  Text txtalgn(TxtAl al) => text(textAlign: al.value);
}
