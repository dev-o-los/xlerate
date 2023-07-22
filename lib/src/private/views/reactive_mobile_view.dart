import 'package:flutter/material.dart';
import 'package:simple_sizer/src/exports/reactive_widgets/reactive_destination.dart';

import '../reactive_helper.dart';

class ReactiveMobileView extends StatefulWidget {
  const ReactiveMobileView({
    super.key,
    required this.pages,
    required this.reactiveDestinations,
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
  final List<ReactiveDestination> reactiveDestinations;

  final double? bottomNavBarHeight;
  final double? elevation;

  final Duration? animationDuration;

  final Color? backgroundColor;
  final Color? indicatorColor;
  final Color? shadowColor;

  final NavigationDestinationLabelBehavior? labelBehavior;

  final ShapeBorder? indicatorShape;

  @override
  State<ReactiveMobileView> createState() => _ReactiveMobileViewState();
}

class _ReactiveMobileViewState extends State<ReactiveMobileView> {
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
        destinations: widget.reactiveDestinations
            .map((e) => ReactiveHelper.bar(e))
            .toList(),
        surfaceTintColor: Colors.transparent,
        onDestinationSelected: (value) => _changePage(value),
      ),
    );
  }
}
