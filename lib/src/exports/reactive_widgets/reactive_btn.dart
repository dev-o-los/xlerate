// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReactiveBtn extends StatefulWidget {
  /// The `ReactiveBtn` class in Dart is a stateful widget that creates a button with a reactive scaling
  /// animation when pressed.
  const ReactiveBtn({
    super.key,
    required this.child,
    required this.onPressed,
    this.begin = 1.0,
    this.end = 0.85,
    this.duration = const Duration(milliseconds: 400),
    this.curve = Curves.easeInOutQuad,
  });

  final Widget child;
  final VoidCallback onPressed;

  /// This variable is used to specify the initial scale value of the button
  /// when it is not pressed. It is set to a default value of `1.0`.
  final double begin;

  /// This variable is used to specify the final scale value of the button when
  /// it is pressed. It represents the scale value that the button will animate to when it is pressed.
  /// The default value for `end` is `0.85`.
  final double end;

  /// This variable is used to specify the duration of the
  /// scaling animation that occurs when the button is pressed. It determines how long the button takes
  /// to transition from its initial scale value (`begin`) to its final scale value (`end`). The default
  /// duration is set to `Duration(milliseconds: 400)`.
  final Duration duration;

  /// This variable is used to specify the curve of the animation that controls
  /// the rate of change of the scaling effect when the button is pressed.
  final Curve curve;

  @override
  State<ReactiveBtn> createState() => _ReactiveBtnState();
}

class _ReactiveBtnState extends State<ReactiveBtn> {
  late double _scale;

  @override
  void initState() {
    _scale = widget.begin;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () async {
          widget.onPressed.call();
          setState(() => _scale = widget.end);
          await Future.delayed(
            widget.duration,
            () => setState(() => _scale = widget.begin),
          );
        },
        child: AnimatedScale(
          duration: widget.duration,
          curve: widget.curve,
          scale: _scale,
          child: widget.child,
        ),
      );
}
