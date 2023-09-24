import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    return PlayAnimation<double>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: Duration(milliseconds: 500),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, child, value) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: PlayAnimation<Offset>(
        delay: Duration(milliseconds: (500 * delay).round()),
        duration: Duration(milliseconds: 500),
        tween: Tween(begin: Offset(0, -30.0), end: Offset(0, 0)),
        builder: (context, child, value) {
          return Transform.translate(
            offset: value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}
