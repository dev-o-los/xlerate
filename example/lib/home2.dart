import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ReactiveRowCol(
        rowMainAxisAlignment: MainAxisAlignment.center,
        colMainAxisAlignment: MainAxisAlignment.center,
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
