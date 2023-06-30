import 'package:flutter/material.dart';

class ReactiveHome extends StatefulWidget {
  const ReactiveHome({
    super.key,
    required this.pages,
    required this.bottomNavBarDestinations,
    this.bottomNavBarHeight,
    this.labelBehavior,
    this.animationDuration,
    this.backgroundColor,
    this.elevation,
    this.indicatorColor,
    this.indicatorShape,
    this.shadowColor,
  });

  final List<Widget> pages;
  final List<NavigationDestination> bottomNavBarDestinations;

  final double? bottomNavBarHeight;
  final double? elevation;

  final Duration? animationDuration;

  final Color? backgroundColor;
  final Color? indicatorColor;
  final Color? shadowColor;

  final NavigationDestinationLabelBehavior? labelBehavior;

  final ShapeBorder? indicatorShape;

  @override
  State<ReactiveHome> createState() => _ReactiveHomeState();
}

class _ReactiveHomeState extends State<ReactiveHome> {
  int _currentindex = 0;

  void _changePage(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[_currentindex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentindex,
        height: widget.bottomNavBarHeight,
        labelBehavior: widget.labelBehavior,
        animationDuration: widget.animationDuration,
        backgroundColor: widget.backgroundColor,
        elevation: widget.elevation,
        indicatorColor: widget.indicatorColor,
        indicatorShape: widget.indicatorShape,
        shadowColor: widget.shadowColor,
        key: widget.key,
        destinations: widget.bottomNavBarDestinations,
        surfaceTintColor: Colors.transparent,
        onDestinationSelected: (value) => _changePage(value),
      ),
    );
  }
}
