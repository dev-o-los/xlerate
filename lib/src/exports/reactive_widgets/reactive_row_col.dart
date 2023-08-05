/// The `ReactiveRowCol` class is a Flutter widget that dynamically arranges its children in either a
/// row or column based on the screen width.
import 'package:flutter/widgets.dart';

class ReactiveRowCol extends StatelessWidget {
  /// The code snippet is defining a constructor for the `ReactiveRowCol` class in Dart.
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

  /// The `rowWhen` parameter is a function that takes a `double` value representing the screen width and
  /// returns a `bool` value. It is used to determine at what point of the screen width the children
  /// should be arranged in a row form.
  final bool Function(double screenWidth) rowWhen;

  /// The `colWhen` is a function parameter that takes a
  /// `double` value representing the screen width and returns a `bool` value. It is used to determine
  /// at what point of the screen width the children should be arranged in column form. The function
  /// should return `true` when the condition for arranging the children in column form is satisfied,
  /// and `false` otherwise.
  final bool Function(double screenWidth) colWhen;

  /// The `children` is a function parameter that takes two boolean parameters `isRow` and `isCol`.
  /// It is a callback function that is responsible for building and returning a list of widgets based
  /// on the values of `isRow` and `isCol`.
  final List<Widget> Function(bool isRow, bool isCol) children;

  /// The `rowMainAxisAlignment` is used to
  /// specify how the children should be aligned along the main axis when arranged in a row. The
  /// `MainAxisAlignment` enum provides different options for alignment, such as `start`, `end`,
  /// `center`, `spaceBetween`, `spaceAround`, and `spaceEvenly`. The value of `rowMainAxisAlignment`
  /// will be used when the children are arranged in a row.
  final MainAxisAlignment rowMainAxisAlignment;

  /// `colMainAxisAlignment` of type `MainAxisAlignment`. This variable is used to specify how the
  /// children should be aligned along the main axis when arranged in a column. The `MainAxisAlignment`
  /// enum provides different options for alignment, such as `start`, `end`, `center`, `spaceBetween`,
  /// `spaceAround`, and `spaceEvenly`. The value of `colMainAxisAlignment` will be used when the
  /// children are arranged in a column.
  final MainAxisAlignment colMainAxisAlignment;

  /// `rowCrossAxisAlignment` of type `CrossAxisAlignment`. This variable is used to specify how the
  /// children should be aligned along the cross axis when arranged in a row. The `CrossAxisAlignment`
  /// enum provides different options for alignment, such as `start`, `end`, `center`, `stretch`, and
  /// `baseline`. The value of `rowCrossAxisAlignment` will be used when the children are arranged in a
  /// row.
  final CrossAxisAlignment rowCrossAxisAlignment;

  /// The `colCrossAxisAlignment` is used to specify how the children should be aligned along the cross
  /// axis when arranged in a column. The `CrossAxisAlignment` enum provides different options for
  /// alignment, such as `start`, `end`, `center`, `stretch`, and `baseline`. The value of
  /// `colCrossAxisAlignment` will be used when the children are arranged in a column.
  final CrossAxisAlignment colCrossAxisAlignment;

  /// The `rowVerticalDirection` parameter is used to specify the vertical
  /// direction in which the children should be laid out when arranged in a row.
  /// It accepts a value of type `VerticalDirection`, which can be either `down`
  /// or `up`. The `down` value indicates that the children should be laid out
  /// from top to bottom, while the `up` value indicates that the children
  /// should be laid out from bottom to top.
  final VerticalDirection rowVerticalDirection;

  /// The `colVerticalDirection` variable is used to specify the vertical direction in which the
  /// children should be laid out when arranged in a column. It accepts a value of type
  /// `VerticalDirection`, which can be either `down` or `up`. The `down` value indicates that the
  /// children should be laid out from top to bottom, while the `up` value indicates that the children
  /// should be laid out from bottom to top.
  final VerticalDirection colVerticalDirection;

  /// The `rowMainAxisSize` variable is used to specify the size of the `Row` widget along its main
  /// axis. It is of type `MainAxisSize`, which is an enum that provides two options: `MainAxisSize.max`
  /// and `MainAxisSize.min`.
  final MainAxisSize rowMainAxisSize;

  /// The `colMainAxisSize` is a variable that is used to specify the size of the
  /// `Column` widget along its main axis. It is of type `MainAxisSize`, which is an enum that provides
  /// two options: `MainAxisSize.max` and `MainAxisSize.min`.
  final MainAxisSize colMainAxisSize;

  /// The `rowTextbaseline` is a variable that is used to specify the baseline
  /// alignment for the text within the `Row` widget. It accepts a value of type `TextBaseline`, which
  /// can be one of the following options:
  final TextBaseline? rowTextbaseline;

  /// The `colTextbaseline` variable is used to specify the baseline alignment for
  /// the text within the `Column` widget. It accepts a value of type `TextBaseline`, which can be one
  /// of the following options:
  final TextBaseline? colTextbaseline;

  /// The `rowTextDirection` variable is used to specify the direction of the text
  /// within the `Row` widget. It accepts a value of type `TextDirection`, which can be either
  /// `TextDirection.ltr` (left-to-right) or `TextDirection.rtl` (right-to-left). By setting the value
  /// of `rowTextDirection`, you can control the direction of the text within the `Row` widget.
  final TextDirection? rowTextDirection;

  /// The `colTextDirection` variable is used to specify the direction of the text
  /// within the `Column` widget. It accepts a value of type `TextDirection`, which can be either
  /// `TextDirection.ltr` (left-to-right) or `TextDirection.rtl` (right-to-left). By setting the value
  /// of `colTextDirection`, you can control the direction of the text within the `Column` widget.
  final TextDirection? colTextDirection;
  final Key? rowKey;
  final Key? colKey;

  /// The function builds a widget based on the current width of the screen, either a Row or a Column,
  /// depending on the conditions specified.
  ///
  /// Args:
  ///   context (BuildContext): The `BuildContext` object represents the location of a widget within the
  /// widget tree. It is typically used to access the theme, media query, and other information about the
  /// current context.
  ///
  /// Returns:
  ///   The code is returning a widget based on the conditions specified. If the condition
  /// `rowWhen.call(currentWidth)` is true, it returns a `Row` widget with the specified properties. If
  /// the condition `colWhen.call(currentWidth)` is true, it returns a `Column` widget with the specified
  /// properties. If neither condition is true, it throws an exception with the message 'No conditions
  /// satisfied.'
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final bool isRow = rowWhen.call(currentWidth);
    final bool isCol = colWhen.call(currentWidth);

    /// The code snippet is checking if the condition specified by the `rowWhen` function is true. If
    /// the condition is true, it returns a `Row` widget with the specified properties. The properties
    /// include the `mainAxisAlignment`, `crossAxisAlignment`, `mainAxisSize`, `textBaseline`,
    /// `textDirection`, `verticalDirection`, `key`, and `children`. These properties determine how the
    /// children widgets will be arranged within the `Row` widget.
    if (isRow) {
      return Row(
        mainAxisAlignment: rowMainAxisAlignment,
        crossAxisAlignment: rowCrossAxisAlignment,
        mainAxisSize: rowMainAxisSize,
        textBaseline: rowTextbaseline,
        textDirection: rowTextDirection,
        verticalDirection: rowVerticalDirection,
        key: rowKey,
        children: children.call(isRow, isCol),
      );
    }

    /// The function returns a Column widget with specified properties and children if a condition is
    /// met.
    ///
    /// Args:
    ///   currentWidth (colWhen): The current width of the screen or container.
    ///
    /// Returns:
    ///   A Column widget is being returned.
    else if (isCol) {
      return Column(
        mainAxisAlignment: colMainAxisAlignment,
        crossAxisAlignment: colCrossAxisAlignment,
        mainAxisSize: colMainAxisSize,
        textBaseline: colTextbaseline,
        textDirection: colTextDirection,
        verticalDirection: colVerticalDirection,
        key: colKey,
        children: children.call(isRow, isCol),
      );
    }

    /// The `else` block with the `throw Exception('No conditions satisfied.')` statement is executed
    /// when neither the `rowWhen` condition nor the `colWhen` condition is true. It throws an
    /// exception with the message 'No conditions satisfied.' to indicate that none of the conditions
    /// for arranging the children in either a row or column form is satisfied. This can be useful for
    /// debugging or handling cases where the widget should not be rendered if certain conditions are
    /// not met.
    else {
      throw Exception('No conditions satisfied.');
    }
  }
}
