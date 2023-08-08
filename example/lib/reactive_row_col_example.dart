import 'package:flutter/material.dart';
import 'package:simple_sizer/reactive_widgets.dart';
import 'package:simple_sizer/size_config.dart';

class ReactiveRowColExample extends StatelessWidget {
  const ReactiveRowColExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ReactiveRowCol(
        rowMainAxisAlignment: MainAxisAlignment.center,
        colMainAxisAlignment: MainAxisAlignment.center,
        colCrossAxisAlignment: CrossAxisAlignment.center,
        rowWhen: (screenWidth) =>
            (screenWidth > 500 && screenWidth < double.infinity),
        colWhen: (screenWidth) => (screenWidth > 0 && screenWidth <= 500),
        children: (isRow, isCol) => [
          Container(
            height: 200,
            width: 30.w,
            color: Colors.red,
          ),
          isRow
              ? Container(
                  height: 200,
                  width: 30.w,
                  color: Colors.green,
                )
              : Container(),
          Container(
            height: 200,
            width: 30.w,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
