import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final md = MediaQuery.of(context).size.width;
    print(md);
    return Center(
      child: ReactiveRowCol(
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
