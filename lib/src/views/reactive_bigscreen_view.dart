import 'package:flutter/material.dart';
import 'package:simple_sizer/src/reactive_widgets/reactive_destination.dart';

class ReactiveBigScreenView extends StatefulWidget {
  const ReactiveBigScreenView({
    super.key,
    required this.pages,
    required this.reactiveDestinations,
    this.backgroundColor,
    this.elevation,
    this.indicatorColor,
    this.indicatorShape,
    this.extended = false,
    this.groupAlignment,
    this.labelType,
    this.leading,
    this.minExtendedWidth,
    this.minWidth,
    this.selectedIconTheme,
    this.selectedLabelTextStyle,
    this.trailing,
    this.unselectedIconTheme,
    this.unselectedLabelTextStyle,
    this.useIndicator,
  });

  final List<Widget> pages;
  final List<ReactiveDestination> reactiveDestinations;

  final double? elevation;
  final double? groupAlignment;
  final double? minExtendedWidth;
  final double? minWidth;

  final Color? backgroundColor;
  final Color? indicatorColor;

  final Widget? leading;
  final Widget? trailing;

  final bool extended;
  final bool? useIndicator;

  final TextStyle? selectedLabelTextStyle;
  final TextStyle? unselectedLabelTextStyle;

  final IconThemeData? selectedIconTheme;
  final IconThemeData? unselectedIconTheme;

  final ShapeBorder? indicatorShape;

  final NavigationRailLabelType? labelType;

  @override
  State<ReactiveBigScreenView> createState() => _ReactiveBigScreenViewState();
}

class _ReactiveBigScreenViewState extends State<ReactiveBigScreenView> {
  int _currentindex = 0;

  void _changePage(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            destinations: widget.reactiveDestinations
                .map((e) => e.navType().rail)
                .toList(),
            selectedIndex: _currentindex,
            backgroundColor: widget.backgroundColor,
            elevation: widget.elevation,
            indicatorColor: widget.indicatorColor,
            indicatorShape: widget.indicatorShape,
            extended: widget.extended,
            groupAlignment: widget.groupAlignment,
            labelType: widget.labelType,
            leading: widget.leading,
            minExtendedWidth: widget.minExtendedWidth,
            minWidth: widget.minWidth,
            selectedIconTheme: widget.selectedIconTheme,
            selectedLabelTextStyle: widget.selectedLabelTextStyle,
            trailing: widget.trailing,
            unselectedIconTheme: widget.unselectedIconTheme,
            unselectedLabelTextStyle: widget.unselectedLabelTextStyle,
            useIndicator: widget.useIndicator,
            key: widget.key,
            onDestinationSelected: (value) => _changePage(value),
          ),
          Expanded(child: widget.pages[_currentindex]),
        ],
      ),
    );
  }
}
