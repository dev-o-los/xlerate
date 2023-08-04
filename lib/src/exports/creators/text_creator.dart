import 'package:flutter/material.dart';

import '../../../simple_sizer.dart';

class TextCreator {
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

  TextCreator _setFontSize(double size) => this.._fontSize = size;
  TextCreator _setTextScaleFactor(double scale) =>
      this.._textScaleFactor = scale;
  TextCreator _setOverFlow(TextOverflow overflow) => this.._overflow = overflow;

  TextCreator get bold => this.._fontWeight = FontWeight.bold;
  TextCreator get semibold => this.._fontWeight = FontWeight.w600;

  TextCreator get itlc => this.._fontStyle = FontStyle.italic;

  TextCreator get clip => _setOverFlow(TextOverflow.clip);
  TextCreator get ellipsis => _setOverFlow(TextOverflow.ellipsis);
  TextCreator get fade => _setOverFlow(TextOverflow.fade);
  TextCreator get visible => _setOverFlow(TextOverflow.visible);

  TextCreator get xs => _setTextScaleFactor(0.75);
  TextCreator get sml => _setTextScaleFactor(0.875);
  TextCreator get xl => _setTextScaleFactor(1.25);
  TextCreator get xxl => _setTextScaleFactor(1.5);
  TextCreator get xxxl => _setTextScaleFactor(1.875);

  TextCreator col(Color color) => this.._color = color;
  TextCreator bgcol(Color color) => this.._backgroundColor = color;
  TextCreator fontfm(String fmly) => this.._fontFamily = fmly;
  TextCreator fntsize(double size) => _setFontSize(size);
  TextCreator shadows(List<Shadow> sh) => this.._shadows = sh;
  TextCreator mxlnes(int maxLines) => this.._maxLines = maxLines;
  TextCreator txtalgn(TxtAl al) => this.._textAlign = al.value;

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
          );
    return Text(
      data,
      maxLines: _maxLines,
      textScaleFactor: _textScaleFactor,
      overflow: _overflow,
      textAlign: _textAlign,
      style: textstyle,
    );
  }
}
