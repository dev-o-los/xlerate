import 'package:flutter/widgets.dart';

extension CnctionStateExt on ConnectionState {
  bool get isWaiting => this == ConnectionState.waiting;
  bool get isActive => this == ConnectionState.active;
  bool get isDone => this == ConnectionState.done;
  bool get isNone => this == ConnectionState.none;
}
