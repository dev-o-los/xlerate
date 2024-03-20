import 'package:flutter/widgets.dart';

import '../../../xlerate.dart';
import '../../private/mixins/create_mixin.dart';

/// The `TextCreator` class in Dart is a utility class that allows you to easily create `Text` widgets
/// with customizable styles and properties.
@protected
class TextCreator implements CreateMixin<Text> {
  TextCreator({
    required this.data,
    this.style,
  });

  final String data;
  final TextStyle? style;

  FontWeight? _fontWeight;
  Color? _color;
  Color? _backgroundColor;
  String? _fontFamily;
  double? _fontSize;
  FontStyle? _fontStyle;
  List<Shadow>? _shadows;
  TextOverflow? _overflow;
  int? _maxLines;
  TextAlign? _textAlign;
  double? _textScaleFactor;
  TextDecoration? _textDecoration;
  Locale? _locale;

  /// The function `_setFontSize` sets the font size to a given value.
  ///
  /// Args:
  ///   size (double): The size parameter is a double value that represents the font size to be set.
  TextCreator _setFontSize(double? size) => this.._fontSize = size;

  /// The function sets the text scale factor for a TextCreator object.
  ///
  /// Args:
  ///   scale (double): The "scale" parameter is a double value that represents the scaling factor for
  /// the text. It determines how much the text should be scaled up or down.
  TextCreator _setTextScaleFactor(double scale) =>
      this.._textScaleFactor = scale;

  /// The function sets the overflow property of a TextCreator object.
  ///
  /// Args:
  ///   overflow (TextOverflow): The "overflow" parameter is of type TextOverflow. It is used to specify
  /// how text should be handled if it overflows the available space.
  TextCreator _setOverFlow(TextOverflow overflow) => this.._overflow = overflow;

  ///sets the `fontWieght` to bold.
  TextCreator get bold => this.._fontWeight = FontWeight.bold;

  /// The function `boldWhen` returns a `TextCreator` object with bold font weight if a given condition
  /// is true.
  ///
  /// Args:
  ///   condition (bool): The `condition` parameter is a boolean value that determines whether the text
  /// should be displayed in bold or not. If the `condition` is true, the text will be displayed in
  /// bold; otherwise, it will not be bold.
  TextCreator boldWhen(bool condition) =>
      this.._fontWeight = condition ? FontWeight.bold : null;

  ///sets the `fontWieght` to semibold.
  TextCreator get semibold => this.._fontWeight = FontWeight.w600;

  ///sets the `fontWieght` to semibold when the condition evaluates to true.
  TextCreator semiboldWhen(bool condition) =>
      this.._fontWeight = condition ? FontWeight.w600 : null;

  /// sets the `fontStyle`
  /// property of the `TextCreator` object to `FontStyle.italic`. This means
  /// that the text created using this `TextCreator` object will be displayed in
  /// italic font style.
  TextCreator get itlc => this.._fontStyle = FontStyle.italic;

  /// The `TextCreator itlcWhen(bool condition)` method in the `TextCreator` class is a method that sets
  /// the font style of the text to italic (`FontStyle.italic`) based on a given condition.
  TextCreator itlcWhen(bool condition) =>
      this.._fontStyle = condition ? FontStyle.italic : null;

  /// sets the overflow
  /// property of the `TextCreator` object to `TextOverflow.clip`. This means
  /// that if the text overflows the available space, it will be clipped and not
  /// displayed outside the boundaries of the container.
  TextCreator get clip => _setOverFlow(TextOverflow.clip);

  /// The function `clipWhen` returns a `TextCreator` with either `TextOverflow.clip` or
  /// `TextOverflow.visible` based on the input condition.
  ///
  /// Args:
  ///   condition (bool): The `condition` parameter is a boolean value that determines whether the
  /// `TextOverflow` should be set to `clip` or `visible` in the `TextCreator` function. If the
  /// `condition` is true, the `TextOverflow` will be set to `clip`, otherwise it will be
  TextCreator clipWhen(bool condition) =>
      _setOverFlow(condition ? TextOverflow.clip : TextOverflow.visible);

  /// sets the overflow property of the `TextCreator` object to
  /// `TextOverflow.ellipsis`. This means that if the text overflows the
  /// available space, it will be truncated and an ellipsis (...) will be
  /// displayed at the end of the text to indicate that it has been cut off.
  TextCreator get ellipsis => _setOverFlow(TextOverflow.ellipsis);

  /// The function `ellipsisWhen` returns a `TextOverflow.ellipsis` value if a given condition is true,
  /// otherwise it returns `TextOverflow.visible`.
  ///
  /// Args:
  ///   condition (bool): The `condition` parameter is a boolean value that determines whether the text
  /// should have an ellipsis (`TextOverflow.ellipsis`) or be fully visible (`TextOverflow.visible`). If
  /// the `condition` is true, the text will have an ellipsis; otherwise, it will be fully visible.
  TextCreator ellipsisWhen(bool condition) =>
      _setOverFlow(condition ? TextOverflow.ellipsis : TextOverflow.visible);

  /// sets the property of the `TextCreator` object to `TextOverflow.fade`. This means
  /// that if the text overflows the available space, it will fade out gradually
  /// at the edges instead of being clipped or truncated.
  TextCreator get fade => _setOverFlow(TextOverflow.fade);

  /// The function `fadeWhen` returns a `TextCreator` with a specified `TextOverflow` based on a given
  /// condition.
  ///
  /// Args:
  ///   condition (bool): The `condition` parameter is a boolean value that determines whether the text
  /// should fade when it overflows or remain visible. If the `condition` is true, the text will fade
  /// when it overflows; otherwise, it will remain visible.
  TextCreator fadeWhen(bool condition) =>
      _setOverFlow(condition ? TextOverflow.fade : TextOverflow.visible);

  /// sets the property of the `TextCreator` object to `TextOverflow.visible`. This
  /// means that if the text overflows the available space, it will be fully
  /// visible and not clipped, truncated, or faded out.
  TextCreator get visible => _setOverFlow(TextOverflow.visible);

  /// The function `TextCreator` returns a `TextOverflow.visible` value based on the input condition.
  ///
  /// Args:
  ///   condition (bool): The `condition` parameter is a boolean value that determines whether the
  /// `TextOverflow` should be set to `visible` or not based on the condition provided. If the
  /// condition is `true`, the `TextOverflow` will be set to `visible`, otherwise it will also be set
  /// to `visible
  TextCreator visibleWhen(bool condition) =>
      _setOverFlow(condition ? TextOverflow.visible : TextOverflow.visible);

  /// sets the `_textAlign` property of the `TextCreator` object to `TextAlign.center`.
  TextCreator get algncntr => this.._textAlign = TextAlign.center;

  /// The `TextCreator` function `algncntrWhen` sets the text alignment to center if a given condition
  /// is true.
  ///
  /// Args:
  ///   condition (bool): The `condition` parameter is a boolean value that determines whether the text
  /// alignment should be set to center or not. If the `condition` is true, the text alignment will be
  /// set to center; otherwise, it will not be changed.
  TextCreator algncntrWhen(bool condition) =>
      this.._textAlign = condition ? TextAlign.center : null;

  /// sets the `_textAlign` property of the `TextCreator` object to `TextAlign.end`.
  TextCreator get algnend => this.._textAlign = TextAlign.end;

  /// The function `algnendWhen` sets the text alignment to end if a specified condition is true.
  ///
  /// Args:
  ///   condition (bool): The `condition` parameter is a boolean value that determines whether the text
  /// alignment should be set to `TextAlign.end` or `null` in the `TextCreator` class. If the
  /// `condition` is `true`, the text alignment will be set to `TextAlign.end`; otherwise, it
  TextCreator algnendWhen(bool condition) =>
      this.._textAlign = condition ? TextAlign.end : null;

  /// adds a underline to the text.
  TextCreator get undrline => this.._textDecoration = TextDecoration.underline;

  /// The function `TextCreator undrlineWhen(bool condition)` sets the text decoration to underline
  /// based on the provided condition.
  ///
  /// Args:
  ///   condition (bool): The `condition` parameter is a boolean value that determines whether the text
  /// should be underlined or not. If the `condition` is true, the text will be underlined; otherwise,
  /// the text will not have an underline decoration.
  TextCreator undrlineWhen(bool condition) =>
      this.._textDecoration = condition ? TextDecoration.underline : null;

  /// sets the text scale factor to 0.75.
  TextCreator get xs => _setTextScaleFactor(0.75);

  /// sets the text scale factor to 0.875.
  TextCreator get sml => _setTextScaleFactor(0.875);

  /// sets the text scale factor to 1.25.
  TextCreator get xl => _setTextScaleFactor(1.25);

  /// sets the text scale factor to 1.5.
  TextCreator get xxl => _setTextScaleFactor(1.5);

  /// sets the text scale factor to 1.875.
  TextCreator get xxxl => _setTextScaleFactor(1.875);

  /// sets the color of the text
  TextCreator col(Color? color) => this.._color = color;

  /// sets the backgroud color of the text
  TextCreator bgcol(Color color, {bool when = true}) =>
      this.._backgroundColor = when ? color : null;

  /// sets the fontfamily of the text
  TextCreator fontfm(String fmly, {bool when = true}) =>
      this.._fontFamily = when ? fmly : null;

  /// sets the fontsize of the text
  TextCreator fntsize(double size, {bool when = true}) =>
      _setFontSize(when ? size : null);

  /// sets the shadows of the text
  TextCreator shadows(List<Shadow> sh, {bool when = true}) =>
      this.._shadows = when ? sh : null;

  /// sets the maxlines of the text
  TextCreator mxlnes(int maxLines, {bool when = true}) =>
      this.._maxLines = when ? maxLines : null;

  /// sets the text alignment of the text
  TextCreator txtalgn(TxtAl al, {bool when = true}) =>
      this.._textAlign = when ? al.value : null;

  /// The function `txtDecor` sets the text
  TextCreator txtDecor(TextDecoration decoration, {bool when = true}) =>
      this.._textDecoration = when ? decoration : null;

  /// sets the locale of the text
  TextCreator locale(Locale locale, {bool when = true}) =>
      this.._locale = when ? locale : null;

  /// The function creates a Text widget with customizable text style and properties.
  ///
  /// Returns:
  ///   a Text widget.
  @override
  Text create() {
    final textstyle = (style == null)
        ? TextStyle(
            fontWeight: _fontWeight,
            color: _color,
            backgroundColor: _backgroundColor,
            fontFamily: _fontFamily,
            fontSize: _fontSize,
            fontStyle: _fontStyle,
            overflow: _overflow,
            shadows: _shadows,
            decoration: _textDecoration,
          )
        : style!.copyWith(
            fontWeight: _fontWeight,
            color: _color,
            backgroundColor: _backgroundColor,
            fontFamily: _fontFamily,
            fontSize: _fontSize,
            fontStyle: _fontStyle,
            overflow: _overflow,
            shadows: _shadows,
            decoration: _textDecoration,
          );
    return Text(
      data,
      maxLines: _maxLines,
      locale: _locale,
      textScaler: TextScaler.linear(_textScaleFactor ?? 1.0),
      overflow: _overflow,
      textAlign: _textAlign,
      style: textstyle,
    );
  }
}
