import 'package:flutter/material.dart';

class ImageResource {
  static final ImageResource instance = ImageResource._internal();
  ImageResource._internal();

  static Image cash = Image.asset('assets/images/cash.png');
  static Image cashBg1 = Image.asset('assets/images/loginbg1.png');
  static Image cashBg2 = Image.asset('assets/images/loginbg2.png');

  static Image wave1 = Image.asset('assets/images/wave1.png');
  static Image wave2 = Image.asset('assets/images/wave2.png');
  static Image wave3 = Image.asset('assets/images/wave3.png');
  static Image wave4 = Image.asset('assets/images/wave4.png');

  static Image hand = Image.asset('assets/images/hand.png');
  static Image handphone = Image.asset('assets/images/handphone.png');
}
