import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';
import 'package:simple_sizer/src/exports/extensions/boxdecor_ext.dart';

Future simpleBottomSheet(
  BuildContext context, {
  required List<Widget> widgets,
  String title = 'Title',
  bool removeHeader = false,
  bool removescrollNob = false,
  bool removeDivider = false,
  bool takeMinHeight = false,
  bool isScrollControlled = false,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool useSafeArea = false,
  bool enableDrag = true,
  bool? showDragHandle,
  Color? nobCol,
  Color? backgroundColor,
  Color? barrierColor,
  double? nobRad,
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
            if (!removescrollNob)
              Container(
                height: 7,
                width: 45,
                decoration: const BoxDecoration()
                    .col(nobCol ?? Colors.grey.shade600)
                    .curveAllCornersByRad(rad: nobRad ?? 10),
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
