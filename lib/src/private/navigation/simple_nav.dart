import 'package:flutter/material.dart';

enum NavigationType { push, pushReplacement }

class SimpleNav {
  static void navigateTo(
    BuildContext context,
    Widget page,
    NavigationType type, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool allowSnapshotting = true,
  }) {
    if (type == NavigationType.push) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => page,
        allowSnapshotting: allowSnapshotting,
        fullscreenDialog: fullscreenDialog,
        maintainState: maintainState,
        settings: settings,
      ));
    } else if (type == NavigationType.pushReplacement) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => page,
        allowSnapshotting: allowSnapshotting,
        fullscreenDialog: fullscreenDialog,
        maintainState: maintainState,
        settings: settings,
      ));
    }
  }
}
