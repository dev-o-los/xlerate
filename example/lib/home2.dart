import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ReactiveRowCol(
        // rowMainAxisAlignment: MainAxisAlignment.center,
        // colMainAxisAlignment: MainAxisAlignment.center,
        // colCrossAxisAlignment: CrossAxisAlignment.center,
        // colMainAxisSize: MainAxisSize.max,
        // colTextDirection: TextDirection.ltr,
        // colTextbaseline: TextBaseline.alphabetic,
        // colVerticalDirection: VerticalDirection.down,
        // rowCrossAxisAlignment: CrossAxisAlignment.baseline,
        // rowMainAxisSize: MainAxisSize.max,
        // rowTextDirection: TextDirection.ltr,
        // rowTextbaseline: TextBaseline.alphabetic,
        // rowVerticalDirection: VerticalDirection.down,
        rowWhen: (screenWidth) =>
            (screenWidth > 500 && screenWidth < double.infinity),
        colWhen: (screenWidth) => (screenWidth > 0 && screenWidth <= 500),
        children: [
          Container(
            height: 200,
            width: 30.w,
            color: Colors.red,
          ),
          Builder(builder: (context) {
            return Container(
              height: 200,
              width: 30.w,
              color: Colors.red,
            );
          }),
        ],
      ),
    );
  }
}
