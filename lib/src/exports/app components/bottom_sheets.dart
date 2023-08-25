import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';
import 'package:simple_sizer/size_config_web.dart';

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

  /// The `bool removescrollHandle = false` parameter in the `simpleBottomSheet` function is a boolean
  /// value that determines whether to remove the scroll handle (the small handle used to scroll the bottom
  /// sheet).
  bool removescrollHandle = false,

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

  /// The `Color? scrollHandleCol` parameter in the `simpleBottomSheet` function is an optional
  /// parameter that allows you to specify the color of the scroll handle (the small handle used to
  /// scroll the bottom sheet).
  Color? scrollHandleCol,

  /// The `Color? backgroundColor` parameter in the `simpleBottomSheet` function is an optional
  /// parameter that allows you to specify the background color of the bottom sheet. By providing a
  /// value for this parameter, you can customize the appearance of the bottom sheet by setting a
  /// specific background color. If no value is provided, the default background color will be used.
  Color? backgroundColor,

  /// The `Color? barrierColor` parameter in the `simpleBottomSheet` function is an optional parameter
  /// that allows you to specify the color of the barrier that appears behind the bottom sheet. The
  /// barrier is a semi-transparent overlay that prevents interaction with the rest of the screen while
  /// the bottom sheet is displayed.
  Color? barrierColor,

  /// The `double? scrollHandleRad` parameter in the `simpleBottomSheet` function is an optional
  /// parameter that allows you to specify the radius of the scroll handle (the small handle used to
  /// scroll the bottom sheet). By providing a value for this parameter, you can customize the
  /// appearance of the scroll handle by setting a specific radius. If no value is provided, the default
  /// radius will be used.
  double? scrollHandleRad,

  /// The `double? cornerRad` parameter in the `simpleBottomSheet` function is an optional parameter
  /// that allows you to specify the radius of the corners of the bottom sheet. By providing a value for
  /// this parameter, you can customize the appearance of the bottom sheet by setting a specific corner
  /// radius. If no value is provided, the default corner radius of 25 will be used.
  double? cornerRad,

  /// The `double? bottomSheetHeight` parameter in the `simpleBottomSheet` function is an optional
  /// parameter that allows you to specify the height of the bottom sheet. By providing a value for this
  /// parameter, you can customize the height of the bottom sheet. If no value is provided, the height
  /// of the bottom sheet will be determined based on its content.
  double? bottomSheetHeight,

  /// The `double? elevation` parameter in the `simpleBottomSheet` function is an optional parameter
  /// that allows you to specify the elevation (shadow) of the bottom sheet. By providing a value for
  /// this parameter, you can customize the appearance of the bottom sheet by setting a specific
  /// elevation. If no value is provided, the default elevation will be used.
  double? elevation,

  /// The `Clip? clipBehavior` parameter in the `simpleBottomSheet` function is an optional parameter
  /// that allows you to specify the clipping behavior of the bottom sheet.
  Clip? clipBehavior,

  /// The `ShapeBorder? shape` parameter in the `simpleBottomSheet` function is an optional parameter
  /// that allows you to specify the shape of the bottom sheet. By providing a value for this parameter,
  /// you can customize the appearance of the bottom sheet by setting a specific shape.
  ShapeBorder? shape,

  /// The `BoxConstraints? constraints` parameter in the `simpleBottomSheet` function is an optional
  /// parameter that allows you to specify the constraints for the bottom sheet's size. By providing a
  /// value for this parameter, you can customize the size of the bottom sheet within the specified
  /// constraints. If no value is provided, the default constraints will be used.
  BoxConstraints? constraints,

  /// The `RouteSettings? routeSettings` parameter in the `simpleBottomSheet` function is an optional
  /// parameter that allows you to specify additional settings for the route of the bottom sheet.
  RouteSettings? routeSettings,

  /// The `AnimationController? transitionAnimationController` parameter in the `simpleBottomSheet`
  /// function is an optional parameter that allows you to specify an animation controller for the
  /// transition animation of the bottom sheet.
  AnimationController? transitionAnimationController,

  /// The `Offset? anchorPoint` parameter in the `simpleBottomSheet` function is an optional parameter
  /// that allows you to specify the anchor point for the bottom sheet.
  Offset? anchorPoint,

  ///Sets the height of scroll handle.
  double? scrollHandleHeight,

  ///Sets the width of scroll handle.
  double? scrollHandelWidth,

  /// The `MainAxisAlignment mainAlignment = MainAxisAlignment.start` parameter in the
  /// `simpleBottomSheet` function is an optional parameter that allows you to specify the main
  /// alignment of the widgets inside the bottom sheet.
  MainAxisAlignment mainAlignment = MainAxisAlignment.start,

  /// The `CrossAxisAlignment crossAlignment = CrossAxisAlignment.center` parameter in the
  /// `simpleBottomSheet` function is an optional parameter that allows you to specify the cross-axis
  /// alignment of the widgets inside the bottom sheet.
  CrossAxisAlignment crossAlignment = CrossAxisAlignment.center,
}) async {
  return await showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: curveOnlyTopCorners(rad: cornerRad ?? 20),
    ),
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
    showDragHandle: false,
    transitionAnimationController: transitionAnimationController,
    useRootNavigator: useRootNavigator,
    useSafeArea: useSafeArea,
    builder: (context) {
      return SizedBox(
        height: takeMinHeight ? null : bottomSheetHeight ?? 50.ch(context),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: mainAlignment,
          crossAxisAlignment: crossAlignment,
          mainAxisSize: takeMinHeight ? MainAxisSize.min : MainAxisSize.max,
          children: [
            /// The below code is creating a Container widget with a height of 7 and width of 45. It has
            /// a decoration that sets the color to either the value of `scrollHandleCol` or
            /// `Colors.grey.shade600` if `scrollHandleCol` is null. The container also has rounded
            /// corners with a radius of either the value of `scrollHandleRad` or 10 if `scrollHandleRad`
            /// is null. Finally, the container is positioned at the top with a margin of 15 pixels from
            /// the top.
            if (!removescrollHandle)
              Container(
                height: scrollHandleHeight ?? 7,
                width: scrollHandelWidth ?? 45,
                decoration: Decorate.instance
                    .col(scrollHandleCol ?? Colors.grey.shade600)
                    .curveAllCorners(rad: scrollHandleRad ?? 10)
                    .create(),
              ).pOnly(t: 15),
            ...widgets,
          ],
        ),
      );
    },
  );
}
