import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
    required this.list,
    this.bottomNavBarHeight,
  });

  final List<Widget> list;
  final double? bottomNavBarHeight;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.list[0],
      bottomNavigationBar: NavigationBar(
        //selectedIndex: con.currentindex,
        height: widget.bottomNavBarHeight,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.home), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.home), label: 'Downloads'),
        ],
        surfaceTintColor: Colors.transparent,
        //onDestinationSelected: (value) {},
      ),
    );
  }
}
// class ScreenController extends GetxController {
//   int currentindex = 0;

//   void changePage(int index) {
//     currentindex = index;
//     update(['page']);
//   }
// }
