import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class TextExample extends StatelessWidget {
  const TextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Hello World')
              .bold()
              .bgcol(Colors.black)
              .fntsize(100)
              .col(Colors.red)
              .txtalgn(TxtAl.end)
              .ellipsis()
              .mxlnes(1),
        ],
      ),
    );
  }
}
