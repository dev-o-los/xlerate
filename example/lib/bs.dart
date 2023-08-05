import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class Bs extends StatelessWidget {
  const Bs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () => simpleBottomSheet(
          context,
          widgets: [],
        ),
        child: 'Press'.txt.create(),
      ).cntr(),
    );
  }
}
