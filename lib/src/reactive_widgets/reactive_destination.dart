import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class ReactiveDestination extends StatelessWidget {
  const ReactiveDestination({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return (context.csw > 500)
        ? (NavigationRailDestination(
            icon: Icon(icon),
            label: Text(label),
          ) as Widget)
        : NavigationDestination(
            icon: Icon(icon),
            label: label,
          );
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
