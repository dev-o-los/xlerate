import 'package:flutter/material.dart';
import 'package:simple_sizer/reactive_widgets.dart';

class ReactiveHomeExample extends StatelessWidget {
  const ReactiveHomeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ReactiveHome(
      pages: [
        MyWidget1(),
        MyWidget2(),
        MyWidget3(),
      ],
      reactiveDestinations: [
        ReactiveDestination(label: 'MyWidet1', icon: Icons.home),
        ReactiveDestination(label: 'MyWidet2', icon: Icons.home_filled),
        ReactiveDestination(label: 'MyWidet3', icon: Icons.home_outlined),
      ],
    );
  }
}

class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'This is Widget1',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'This is Widget2',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'This is Widget3',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
