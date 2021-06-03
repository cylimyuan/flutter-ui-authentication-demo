import 'package:flutter/material.dart';
import 'package:tsave/utils/image_resource.dart';

class LoginLogo extends StatelessWidget {
  final double width;
  const LoginLogo(this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width, height: width / 1.6, child: ImageResource.hand);
  }
}
