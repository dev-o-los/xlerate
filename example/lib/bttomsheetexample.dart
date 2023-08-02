import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class Bttomsheetexample extends StatelessWidget {
  const Bttomsheetexample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          simpleBottomSheet(
            context,
            title: 'Hello World',
            widgets: [],
          );
        },
        child: const Text('Press'),
      ).cntr(),
    );
  }
}
