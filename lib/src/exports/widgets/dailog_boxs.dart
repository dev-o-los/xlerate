import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

Future simpleDialogBox(
  BuildContext context, {
  bool scrollable = false,
  bool enableBorder = false,
  Al? al,
  Widget title = const Text('Title'),
  Widget content = const Text('content'),
  ShapeBorder? shape,
  MainAxisAlignment? actionsAlignment,
  Color? shadowColor,
  Color? surfaceTintColor,
  Color? backgroundColor,
  Color? borderColor,
  List<Widget>? actions,
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
                ? allRoundedRectBrdr(brdrcol: borderColor ?? context.cs.outline)
                : null),
        actions: actions,
      );
    },
  );
}

Future theYesNoDialogBox(
  BuildContext context, {
  required VoidCallback onYesPressed,
  VoidCallback? onNoPressed,
  bool scrollable = false,
  bool enableBorder = false,
  Al? al,
  Widget title = const Text('Title'),
  Widget content = const Text('content'),
  ShapeBorder? shape,
  MainAxisAlignment? actionsAlignment,
  Color? shadowColor,
  Color? surfaceTintColor,
  Color? backgroundColor,
  Color? borderColor,
  Key? key,
}) async {
  await simpleDialogBox(
    context,
    scrollable: scrollable,
    actionsAlignment: actionsAlignment,
    al: al,
    backgroundColor: backgroundColor,
    borderColor: borderColor,
    content: content,
    enableBorder: enableBorder,
    key: key,
    shadowColor: shadowColor,
    shape: shape,
    surfaceTintColor: surfaceTintColor,
    title: title,
    actions: [
      TextButton(
          onPressed: onNoPressed ?? () => Navigator.pop(context),
          child: const Text('No')),
      TextButton(onPressed: onYesPressed, child: const Text('Yes')),
    ],
  );
}

Future theYesNoCupertinoDialogBox(
  BuildContext context, {
  required VoidCallback onYesPressed,
  VoidCallback? onNoPressed,
  Widget title = const Text('Title'),
  Widget content = const Text('content'),
  ScrollController? scrollController,
  ScrollController? actionScrollController,
  Curve insetAnimationCurve = Curves.decelerate,
  Duration insetAnimationDuration = const Duration(milliseconds: 100),
  bool isDefaultActionForNo = false,
  bool isDefaultActionForYes = false,
  bool isDestructiveActionForNo = false,
  bool isDestructiveActionForYes = false,
  Key? key,
}) async {
  await showCupertinoDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        scrollController: scrollController,
        actionScrollController: actionScrollController,
        insetAnimationCurve: insetAnimationCurve,
        insetAnimationDuration: insetAnimationDuration,
        title: title,
        content: content,
        key: key,
        actions: [
          CupertinoDialogAction(
              isDefaultAction: isDefaultActionForNo,
              isDestructiveAction: isDestructiveActionForNo,
              onPressed: onNoPressed ?? () => Navigator.pop(context),
              child: const Text('No')),
          CupertinoDialogAction(
              isDefaultAction: isDefaultActionForYes,
              isDestructiveAction: isDestructiveActionForYes,
              onPressed: onYesPressed,
              child: const Text('Yes')),
        ],
      );
    },
  );
}
