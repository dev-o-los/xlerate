import 'package:flutter/widgets.dart';

extension TextExt on Text {
  Text get bold =>
      textHelper(data!, style!.copyWith(fontWeight: FontWeight.bold));

  Text get semibold =>
      textHelper(data!, style!.copyWith(fontWeight: FontWeight.w600));

  Text col(Color color) => textHelper(data!, style!.copyWith(color: color));

  Text bgcol(Color color) =>
      textHelper(data!, style!.copyWith(backgroundColor: color));

  Text fontfm(String fm) => textHelper(data!, style!.copyWith(fontFamily: fm));

  Text fntsize(double size) =>
      textHelper(data!, style!.copyWith(fontSize: size));

  Text get itlc =>
      textHelper(data!, style!.copyWith(fontStyle: FontStyle.italic));

  Text get clip =>
      textHelper(data!, style!.copyWith(overflow: TextOverflow.clip));

  Text get ellipsis =>
      textHelper(data!, style!.copyWith(overflow: TextOverflow.ellipsis));

  Text get fade =>
      textHelper(data!, style!.copyWith(overflow: TextOverflow.fade));

  Text get visible =>
      textHelper(data!, style!.copyWith(overflow: TextOverflow.visible));

  Text shadows(List<Shadow> sh) =>
      textHelper(data!, style!.copyWith(shadows: sh));
}

Text textHelper(String data, TextStyle style) {
  return Text(
    data,
    style: style,
  );
}
