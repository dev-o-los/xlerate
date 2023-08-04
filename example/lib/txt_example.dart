import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class TxtExample extends StatelessWidget {
  const TxtExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 30.h,
              width: 50.w,
              decoration:
                  Decorate.instance.curveAllCorners().col(Colors.red).create(),
            ),
            11.hbox,
            Container(
              height: 30.h,
              width: 50.w,
              decoration: Decorate.instance.col(Colors.green).create(),
            ),
          ],
        ),
      ),
    );
  }
}
