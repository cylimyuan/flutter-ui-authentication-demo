import 'package:flutter/material.dart';
import 'package:tsave/utils/image_resource.dart';

class WaveEffect extends StatelessWidget {
  const WaveEffect();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Container(
      width: width,
      height: width / 1.5,
      child: Stack(
        children: [
          Positioned(
            child: ImageResource.wave1,
            right: 0,
            top: 0,
          ),
          Positioned(
            child: ImageResource.wave2,
            right: -10,
            top: -16,
          ),
          Positioned(
            child: ImageResource.wave3,
            right: -20,
            top: -20,
          ),
          Positioned(
            child: ImageResource.wave4,
            right: -30,
            top: -25,
          )
        ],
      ),
    );
  }
}
