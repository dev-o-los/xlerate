import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

Future simpleDialogBox(
  BuildContext context, {
  /// The `bool scrollable = false` parameter in the `simpleDialogBox` and `theYesNoDialogBox` functions
  /// is used to determine whether the content of the dialog box should be scrollable or not. By
  /// default, it is set to `false`, which means the content will not be scrollable. However, if you set
  /// it to `true`, the content will be scrollable if it exceeds the available space in the dialog box.
  bool scrollable = false,

  /// The `bool enableBorder = false` parameter in the `simpleDialogBox` and `theYesNoDialogBox`
  /// functions is used to determine whether a border should be enabled for the dialog box or not. By
  /// default, it is set to `false`, which means no border will be displayed. However, if you set it to
  /// `true`, a border will be displayed around the dialog box.
  bool enableBorder = false,

  /// The `Al? al` parameter in the `simpleDialogBox` and `theYesNoDialogBox` functions is used to
  /// specify the alignment of the dialog box title and content. It is an optional parameter that
  /// accepts an `Al` enum value. The `Al` enum is defined in the `simple_sizer` package and provides
  /// alignment options such as `Al.start`, `Al.center`, and `Al.end`. By passing a value to the `al`
  /// parameter, you can align the title and content of the dialog box accordingly. If no value is
  /// provided, the default alignment will be used.
  Al? al,

  /// The line `Widget title = const Text('Title')` is declaring a parameter named `title` of type
  /// `Widget` with a default value of `Text('Title')`. This means that when the `simpleDialogBox` or
  /// `theYesNoDialogBox` functions are called, the `title` parameter can be provided with a custom
  /// widget to be displayed as the title of the dialog box. If no value is provided for the `title`
  /// parameter, the default value of `Text('Title')` will be used.
  Widget title = const Text('Title'),

  /// The line `Widget content = const Text('content')` is declaring a parameter named `content` of type
  /// `Widget` with a default value of `Text('content')`. This means that when the `simpleDialogBox` or
  /// `theYesNoDialogBox` functions are called, the `content` parameter can be provided with a custom
  /// widget to be displayed as the content of the dialog box. If no value is provided for the `content`
  /// parameter, the default value of `Text('content')` will be used.
  Widget content = const Text('content'),

  /// The `ShapeBorder? shape` parameter in the `simpleDialogBox` and `theYesNoDialogBox` functions is
  /// used to specify the shape of the dialog box. It accepts a `ShapeBorder` object, which is a base
  /// class for shapes that can be used to define the outline of a box. By providing a custom
  /// `ShapeBorder` object to the `shape` parameter, you can customize the shape of the dialog box, such
  /// as making it rounded or adding custom borders. If no value is provided for the `shape` parameter,
  /// the default shape will be used.
  ShapeBorder? shape,

  /// The `MainAxisAlignment? actionsAlignment` parameter is used to specify the alignment of the
  /// actions in the dialog box. It accepts a `MainAxisAlignment` enum value, which provides alignment
  /// options such as `MainAxisAlignment.start`, `MainAxisAlignment.center`, and
  /// `MainAxisAlignment.end`. By passing a value to the `actionsAlignment` parameter, you can align the
  /// actions in the dialog box accordingly. If no value is provided, the default alignment will be
  /// used.
  MainAxisAlignment? actionsAlignment,

  /// The `Color? shadowColor` parameter is used to specify the color of the shadow that appears around
  /// the dialog box. By providing a custom `Color` value to the `shadowColor` parameter, you can
  /// customize the color of the shadow. If no value is provided for the `shadowColor` parameter, the
  /// default shadow color will be used.
  Color? shadowColor,

  /// The `Color? surfaceTintColor` parameter is used to specify the color of the surface of the dialog
  /// box. By providing a custom `Color` value to the `surfaceTintColor` parameter, you can customize
  /// the color of the dialog box surface. If no value is provided for the `surfaceTintColor` parameter,
  /// the default surface color will be used.
  Color? surfaceTintColor,

  /// The `Color? backgroundColor` parameter is used to specify the background color of the dialog box.
  /// By providing a custom `Color` value to the `backgroundColor` parameter, you can customize the
  /// background color of the dialog box. If no value is provided for the `backgroundColor` parameter,
  /// the default background color will be used.
  Color? backgroundColor,

  /// The `Color? borderColor` parameter is used to specify the color of the border around the dialog
  /// box. By providing a custom `Color` value to the `borderColor` parameter, you can customize the
  /// color of the border. If no value is provided for the `borderColor` parameter, the default border
  /// color will be used.
  Color? borderColor,

  /// The `List<Widget>? actions` parameter in the `simpleDialogBox` and `theYesNoDialogBox` functions
  /// is used to provide a list of widgets that will be displayed as actions in the dialog box. Actions
  /// are typically buttons or clickable elements that perform a specific action when clicked. By
  /// passing a list of widgets to the `actions` parameter, you can customize the actions displayed in
  /// the dialog box. Each widget in the list represents an action button or element.
  List<Widget>? actions,

  /// The `Key? key` parameter is used to provide a unique identifier for the dialog box. It is an
  /// optional parameter that accepts a `Key` object. The `Key` class is used to uniquely identify
  /// widgets in Flutter. By providing a custom `Key` object to the `key` parameter, you can
  /// differentiate between multiple instances of the same dialog box and perform specific operations on
  /// them if needed. If no value is provided for the `key` parameter, a default key will be used.
  Key? key,
}) async {
  await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: title,
        actionsPadding: const EdgeInsets.all(12),
        alignment: al?.value,
        actionsAlignment: actionsAlignment,
        content: content,
        shadowColor: shadowColor,
        surfaceTintColor: surfaceTintColor,
        backgroundColor: backgroundColor,
        scrollable: scrollable,
        key: key,
        shape: shape ??
            (enableBorder
                ? RoundedRectangleBorder(
                    side: BorderSide(color: borderColor ?? context.cs.outline),
                  )
                : null),
        actions: actions,
      );
    },
  );
}
