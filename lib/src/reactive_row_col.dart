import 'package:flutter/material.dart';

class ReactiveRowCol extends StatelessWidget {
  const ReactiveRowCol({
    Key? key,
    required this.rowWhen,
    required this.colWhen,
    required this.children,
    this.rowMainAxisAlignment = MainAxisAlignment.start,
    this.colMainAxisAlignment = MainAxisAlignment.start,
    this.rowCrossAxisAlignment = CrossAxisAlignment.start,
    this.colCrossAxisAlignment = CrossAxisAlignment.start,
    this.rowMainAxisSize = MainAxisSize.max,
    this.colMainAxisSize = MainAxisSize.max,
    this.rowVerticalDirection = VerticalDirection.down,
    this.colVerticalDirection = VerticalDirection.down,
    this.rowTextbaseline,
    this.colTextbaseline,
    this.rowTextDirection,
    this.colTextDirection,
    this.rowKey,
    this.colKey,
  }) : super(key: key);
  final bool rowWhen;
  final bool colWhen;
  final List<Widget> children;
  final MainAxisAlignment rowMainAxisAlignment;
  final MainAxisAlignment colMainAxisAlignment;
  final CrossAxisAlignment rowCrossAxisAlignment;
  final CrossAxisAlignment colCrossAxisAlignment;
  final VerticalDirection rowVerticalDirection;
  final VerticalDirection colVerticalDirection;
  final MainAxisSize rowMainAxisSize;
  final MainAxisSize colMainAxisSize;
  final TextBaseline? rowTextbaseline;
  final TextBaseline? colTextbaseline;
  final TextDirection? rowTextDirection;
  final TextDirection? colTextDirection;
  final Key? rowKey;
  final Key? colKey;

  @override
  Widget build(BuildContext context) {
    if (rowWhen) {
      return Row(
        mainAxisAlignment: rowMainAxisAlignment,
        crossAxisAlignment: rowCrossAxisAlignment,
        mainAxisSize: rowMainAxisSize,
        textBaseline: rowTextbaseline,
        textDirection: rowTextDirection,
        verticalDirection: rowVerticalDirection,
        key: rowKey,
        children: children,
      );
    } else if (colWhen) {
      return Column(
        mainAxisAlignment: colMainAxisAlignment,
        crossAxisAlignment: colCrossAxisAlignment,
        mainAxisSize: colMainAxisSize,
        textBaseline: colTextbaseline,
        textDirection: colTextDirection,
        verticalDirection: colVerticalDirection,
        key: colKey,
        children: children,
      );
    } else {
      throw Exception('No conditions satisfied.');
    }
  }
}
