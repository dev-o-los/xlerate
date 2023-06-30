import 'package:flutter/material.dart';

class ReactiveDestination extends StatelessWidget {
  const ReactiveDestination({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(icon: const Icon(Icons.abc), label: label);
  }
}

// class ReactiveDestination2 extends StatelessWidget {
//   const ReactiveDestination2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return NavigationRailDestination(
//         icon: Icon(Icons.abc_outlined), label: Text('dddd'));
//   }
// }
