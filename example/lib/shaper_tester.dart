import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class ShaperTester extends StatelessWidget {
  const ShaperTester({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          color: Colors.blue,
          shape: Shaper.instance.roundedrectbrdr.curvBL10.curvBR15.create(),
          child: const Text('Hello world').p12(),
        ),
      ),
    );
  }
}
