import 'package:flutter/material.dart';
import 'package:tsave/components/brand/wave_effect.dart';

class StyledPage extends StatelessWidget {
  final Widget child;
  const StyledPage({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: WaveEffect(),
          top: 0,
          right: 0,
        ),
        Positioned.fill(
          child: child,
        )
      ],
    );
  }
}
