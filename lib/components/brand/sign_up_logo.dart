import 'package:flutter/material.dart';
import 'package:tsave/utils/image_resource.dart';

class SignUpLogo extends StatelessWidget {
  final double width;
  const SignUpLogo(this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width / 1.6,
      child: ImageResource.cash,
    );
  }
}
