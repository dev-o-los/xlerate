part of '../flutter_widget_ext.dart';

extension TextExt on Text {
  TextCreator get txt => TextCreator(data: data!, style: style);
}
