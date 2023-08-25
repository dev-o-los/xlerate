import 'package:flutter/widgets.dart';

import '../../../simple_sizer.dart';
import '../../private/create_mixin.dart';

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
  TextCreator _setFontSize(double size) => this.._fontSize = size;

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

  ///sets the `fontWieght` to semibold.
  TextCreator get semibold => this.._fontWeight = FontWeight.w600;

  /// sets the `fontStyle`
  /// property of the `TextCreator` object to `FontStyle.italic`. This means
  /// that the text created using this `TextCreator` object will be displayed in
  /// italic font style.
  TextCreator get itlc => this.._fontStyle = FontStyle.italic;

  /// sets the overflow
  /// property of the `TextCreator` object to `TextOverflow.clip`. This means
  /// that if the text overflows the available space, it will be clipped and not
  /// displayed outside the boundaries of the container.
  TextCreator get clip => _setOverFlow(TextOverflow.clip);

  /// sets the overflow property of the `TextCreator` object to
  /// `TextOverflow.ellipsis`. This means that if the text overflows the
  /// available space, it will be truncated and an ellipsis (...) will be
  /// displayed at the end of the text to indicate that it has been cut off.
  TextCreator get ellipsis => _setOverFlow(TextOverflow.ellipsis);

  /// sets the property of the `TextCreator` object to `TextOverflow.fade`. This means
  /// that if the text overflows the available space, it will fade out gradually
  /// at the edges instead of being clipped or truncated.
  TextCreator get fade => _setOverFlow(TextOverflow.fade);

  /// sets the property of the `TextCreator` object to `TextOverflow.visible`. This
  /// means that if the text overflows the available space, it will be fully
  /// visible and not clipped, truncated, or faded out.
  TextCreator get visible => _setOverFlow(TextOverflow.visible);

  /// sets the `_textAlign` property of the `TextCreator` object to `TextAlign.center`.
  TextCreator get algncntr => this.._textAlign = TextAlign.center;

  /// sets the `_textAlign` property of the `TextCreator` object to `TextAlign.end`.
  TextCreator get algnend => this.._textAlign = TextAlign.end;

  /// adds a underline to the text.
  TextCreator get undrline => this.._textDecoration = TextDecoration.underline;

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
  TextCreator bgcol(Color color) => this.._backgroundColor = color;

  /// sets the fontfamily of the text
  TextCreator fontfm(String fmly) => this.._fontFamily = fmly;

  /// sets the fontsize of the text
  TextCreator fntsize(double size) => _setFontSize(size);

  /// sets the shadows of the text
  TextCreator shadows(List<Shadow> sh) => this.._shadows = sh;

  /// sets the maxlines of the text
  TextCreator mxlnes(int maxLines) => this.._maxLines = maxLines;

  /// sets the text alignment of the text
  TextCreator txtalgn(TxtAl al) => this.._textAlign = al.value;

  /// The function `txtDecor` sets the text
  TextCreator txtDecor(TextDecoration decoration) =>
      this.._textDecoration = decoration;

  /// sets the locale of the text
  TextCreator locale(Locale locale) => this.._locale = locale;

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
      textScaleFactor: _textScaleFactor,
      overflow: _overflow,
      textAlign: _textAlign,
      style: textstyle,
    );
  }
}
