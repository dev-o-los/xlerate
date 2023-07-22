import 'dart:js_interop';
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:simple_sizer/src/exports/enums/text_align_enum.dart';

extension TextExt on Text {
  /// The function `text()` returns a `Text` widget with various styling options.
  ///
  /// Args:
  ///   color (Color): The color of the text.
  ///   backgroundColor (Color): The background color of the text.
  ///   fontFamily (String): The fontFamily parameter is used to specify the font family for the text.
  /// It takes a String value representing the name of the font family.
  ///   fontFamilyFallback (List<String>): The `fontFamilyFallback` parameter is a list of font families
  /// to use as fallbacks if the primary font family specified in the `fontFamily` parameter is not
  /// available.
  ///   fontSize (double): The fontSize parameter is used to specify the size of the text. It takes a
  /// double value as input.
  ///   fontWeight (FontWeight): The fontWeight parameter is used to specify the weight or thickness of
  /// the text. It can take values from the FontWeight enum, such as FontWeight.bold or
  /// FontWeight.normal.
  ///   fontStyle (FontStyle): The fontStyle parameter is used to specify the style of the text, such as
  /// normal, italic, or oblique.
  ///   letterSpacing (double): The letterSpacing parameter is used to control the spacing between
  /// characters in the text. It takes a double value, where a positive value increases the spacing and
  /// a negative value decreases it.
  ///   wordSpacing (double): The `wordSpacing` parameter is used to specify the additional space to be
  /// added between words in the text. It is a double value that represents the number of logical pixels
  /// to add between words. A positive value increases the space between words, while a negative value
  /// decreases it.
  ///   textBaseline (TextBaseline): The `textBaseline` parameter is used to specify the baseline
  /// alignment for the text. It can be set to one of the values from the `TextBaseline` enum, such as
  /// `alphabetic`, `ideographic`, `hanging`, `mathematical`, or `ideographicBaseline`.
  ///   height (double): The `height` parameter is used to set the height of the text. It takes a
  /// `double` value as input.
  ///   background (Paint): The background color or paint of the text.
  ///   debugLabel (String): A string that is used to provide a debug label for the text widget. This
  /// label is used when debugging the application to identify the specific instance of the widget.
  ///   decoration (TextDecoration): The `decoration` parameter is used to specify the decoration to be
  /// applied to the text. It can be set to values like `TextDecoration.none`,
  /// `TextDecoration.underline`, `TextDecoration.lineThrough`, etc.
  ///   decorationColor (Color): The `decorationColor` parameter is used to specify the color of the
  /// text decoration, such as underline or strikethrough.
  ///   decorationStyle (TextDecorationStyle): The `decorationStyle` parameter is used to specify the
  /// style of the text decoration, such as underline, line-through, or overline. It is of type
  /// `TextDecorationStyle`.
  ///   decorationThickness (double): The `decorationThickness` parameter is used to specify the
  /// thickness of the text decoration line. It is a double value that represents the thickness in
  /// logical pixels.
  ///   fontFeatures (List<FontFeature>): A list of font features to be applied to the text. Font
  /// features can include ligatures, stylistic alternates, and other typographic enhancements.
  ///   fontVariations (List<FontVariation>): A list of font variations to apply to the text. Font
  /// variations are used to modify the appearance of specific characters or ranges of characters in a
  /// font.
  ///   foreground (Paint): The `foreground` parameter is used to specify the paint object that is used
  /// to paint the text foreground. It can be used to apply custom effects or styles to the text, such
  /// as gradients or patterns.
  ///   inherit (bool): The `inherit` parameter determines whether the text style should inherit its
  /// properties from its parent widget. If set to `true`, the text style will inherit properties such
  /// as color and font from its parent. If set to `false`, the text style will use the properties
  /// specified in the `style` parameter
  ///   leadingDistribution (TextLeadingDistribution): The `leadingDistribution` parameter is used to
  /// specify how the leading (line height) of the text should be distributed within the line height
  /// constraints. It can have one of the following values:
  ///   textlocale (Locale): The `textlocale` parameter is used to specify the locale for the text. It
  /// is of type `Locale` and can be used to control the formatting of numbers, dates, and other
  /// locale-specific information in the text.
  ///   textoverflow (TextOverflow): The `textoverflow` parameter is used to specify how overflowing
  /// text should be handled. It can have the following values:
  ///   package (String): The `package` parameter is used to specify the package that the text style
  /// belongs to. It is optional and can be used when the text style is defined in a different package
  /// than the one where it is being used.
  ///   shadows (List<Shadow>): The `shadows` parameter is a list of `Shadow` objects that define the
  /// shadows to be applied to the text. Each `Shadow` object represents a single shadow with properties
  /// such as `color`, `offset`, and `blurRadius`. Multiple shadows can be applied by providing multiple
  /// `Shadow`
  ///   overflow (TextOverflow): The `overflow` parameter determines how the text should be handled if
  /// it overflows its container. It can be set to values such as `TextOverflow.clip` to clip the text
  /// and hide any overflow, `TextOverflow.fade` to fade out the overflowed text, or
  /// `TextOverflow.ellipsis
  ///   maxLines (int): The maximum number of lines to display for the text.
  ///   textAlign (TextAlign): Specifies how the text should be aligned horizontally within its
  /// container.
  ///
  /// Returns:
  ///   a Text widget.
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

  /// The function `txtalgn` returns a `Text` widget with the specified text alignment.
  ///
  /// Args:
  ///   al (TxtAl): The parameter "al" is of type "TxtAl", which is an enum that represents different
  /// text alignments.
  Text txtalgn(TxtAl al) => text(textAlign: al.value);
}
