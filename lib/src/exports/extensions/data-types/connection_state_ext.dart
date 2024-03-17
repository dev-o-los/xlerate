import 'package:flutter/widgets.dart';

extension CnctionStateExt on ConnectionState {
  /// This allows for easy checking of the state of a `ConnectionState` object to see
  /// if it is currently in the waiting state.
  bool get isWaiting => this == ConnectionState.waiting;

  /// This allows for easy checking of the state of a `ConnectionState` object to see
  /// if it is currently in the active state.
  bool get isActive => this == ConnectionState.active;

  /// This allows for easy checking of the state of a `ConnectionState` object to see
  /// if it is currently in the done state.
  bool get isDone => this == ConnectionState.done;

  /// This allows for easy checking of the state of a `ConnectionState` object to see
  /// if it is currently in the none state.
  bool get isNone => this == ConnectionState.none;
}
