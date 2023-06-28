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
        rowWhen: (md > 501 && md < double.infinity),
        colWhen: (md > 0 && md <= 500),
        children: [
          Container(
            height: 200,
            width: 30.w,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: 30.w,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
