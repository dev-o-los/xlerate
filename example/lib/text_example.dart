import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class TextExample extends StatelessWidget {
  const TextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Welcome Programmers').bold().fntsize(90).mxlnes(1),
        ],
      ),
    );
  }
}
