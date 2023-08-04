import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class TxtExample extends StatelessWidget {
  const TxtExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text('simple_sizer')
            .txt
            .xxxl
            .semibold
            .col(Colors.red)
            .create(),
      ),
    );
  }
}
