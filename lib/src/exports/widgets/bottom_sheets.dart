import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

/// The `simpleBottomSheet` function is a helper function in Dart that creates a modal bottom sheet with
/// customizable options and widgets.
///
Future simpleBottomSheet(
  BuildContext context, {
  /// The `required List<Widget> widgets` parameter in the `simpleBottomSheet` function is used to
  /// specify a list of widgets that will be displayed in the bottom sheet. The `required` keyword
  /// indicates that this parameter is mandatory and must be provided when calling the function. The
  /// `List<Widget>` type specifies that the parameter should be a list of widgets.
  required List<Widget> widgets,

  /// The `String title = 'Title'` is a parameter in the `simpleBottomSheet` function that allows you to
  /// specify the title of the bottom sheet. It has a default value of 'Title', which means that if you
  /// don't provide a value for the `title` parameter when calling the function, it will default to
  /// 'Title'.
  String title = 'Title',

  /// The `bool removeHeader = false` parameter in the `simpleBottomSheet` function is a boolean value
  /// that determines whether to remove the header section of the bottom sheet. If set to `true`, the
  /// header section will not be displayed. If set to `false` (default value), the header section will
  /// be displayed.
  bool removeHeader = false,

  /// The `bool removescrollNob = false` parameter in the `simpleBottomSheet` function is a boolean
  /// value that determines whether to remove the scroll nob (the small handle used to scroll the bottom
  /// sheet).
  bool removescrollHandle = false,

  /// The `bool removeDivider = false` parameter in the `simpleBottomSheet` function is a boolean value
  /// that determines whether to remove the divider between the header and the content of the bottom
  /// sheet. If set to `true`, the divider will be removed. If set to `false` (default value), the
  /// divider will be displayed.
  bool removeDivider = false,

  /// The `bool takeMinHeight = false` parameter in the `simpleBottomSheet` function is a boolean value
  /// that determines whether the bottom sheet should take the minimum height required to display its
  /// content.
  bool takeMinHeight = false,

  /// The `bool isScrollControlled = false` parameter in the `simpleBottomSheet` function is a boolean
  /// value that determines whether the bottom sheet can be scrolled or not.
  bool isScrollControlled = false,

  /// The `bool useRootNavigator` parameter in the `simpleBottomSheet` function is a boolean value that
  /// determines whether to use the root navigator or not.
  bool useRootNavigator = false,

  /// The `bool isDismissible = true` parameter in the `simpleBottomSheet` function is a boolean value
  /// that determines whether the bottom sheet can be dismissed by tapping outside of it. If set to
  /// `true` (default value), the bottom sheet can be dismissed. If set to `false`, the bottom sheet
  /// cannot be dismissed by tapping outside of it.
  bool isDismissible = true,

  /// The `bool useSafeArea` parameter in the `simpleBottomSheet` function is a boolean value that
  /// determines whether to use the safe area of the device or not.
  bool useSafeArea = false,

  /// The `bool enableDrag = true` parameter in the `simpleBottomSheet` function is a boolean value that
  /// determines whether the bottom sheet can be dragged or not. If set to `true` (default value), the
  /// bottom sheet can be dragged by the user. If set to `false`, the bottom sheet cannot be dragged.
  bool enableDrag = true,

  /// The `bool? showDragHandle` parameter in the `simpleBottomSheet` function is an optional boolean
  /// value that determines whether to show a drag handle in the bottom sheet. If set to `true`, a drag
  /// handle will be displayed at the top of the bottom sheet, allowing the user to drag the sheet up or
  /// down. If set to `false` or not provided, the drag handle will not be displayed.
  bool? showDragHandle,

  /// The `Color? scrollHandleCol` parameter in the `simpleBottomSheet` function is an optional
  /// parameter that allows you to specify the color of the scroll handle (the small handle used to
  /// scroll the bottom sheet).
  Color? scrollHandleCol,
  Color? backgroundColor,
  Color? barrierColor,
  double? scrollHandleRad,
  double? cornerRad,
  double? bottomSheetHeight,
  double? elevation,
  Icon? closeIcon,
  Icon? checkIcon,
  VoidCallback? onClosePressed,
  VoidCallback? onCheckPressed,
  Clip? clipBehavior,
  ShapeBorder? shape,
  BoxConstraints? constraints,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
  Offset? anchorPoint,
}) {
  return showModalBottomSheet(
    context: context,
    shape: verRoundedRectBrdr(t: true, rad: cornerRad ?? 25),
    backgroundColor: backgroundColor,
    barrierColor: barrierColor,
    clipBehavior: clipBehavior,
    elevation: elevation,
    enableDrag: enableDrag,
    anchorPoint: anchorPoint,
    constraints: constraints,
    isDismissible: isDismissible,
    isScrollControlled: isScrollControlled,
    routeSettings: routeSettings,
    showDragHandle: showDragHandle,
    transitionAnimationController: transitionAnimationController,
    useRootNavigator: useRootNavigator,
    useSafeArea: useSafeArea,
    builder: (context) {
      return SizedBox(
        height: takeMinHeight ? null : bottomSheetHeight ?? 50.ch(context),
        child: Column(
          mainAxisSize: takeMinHeight ? MainAxisSize.min : MainAxisSize.max,
          children: [
            if (!removescrollHandle)
              Container(
                height: 7,
                width: 45,
                decoration: const BoxDecoration()
                    .col(scrollHandleCol ?? Colors.grey.shade600)
                    .curveAllCornersByRad(rad: scrollHandleRad ?? 10),
              ).pOnly(t: 15),
            if (!removeHeader) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton.filledTonal(
                    onPressed: onClosePressed,
                    icon: closeIcon ?? const Icon(Icons.close),
                  ),
                  Text(title)
                      .semibold()
                      .fntsize(20)
                      .ellipsis()
                      .cntr()
                      .szdbox(w: 240),
                  IconButton.filledTonal(
                    onPressed: onCheckPressed,
                    icon: checkIcon ?? const Icon(Icons.check),
                  ),
                ],
              ).pLRT(),
            ],
            if (!removeDivider) const Divider().pLRT(t: 5),
            ...widgets,
          ],
        ),
      );
    },
  );
}
