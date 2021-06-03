import 'package:flutter/material.dart';
import 'package:tsave/pages/home/home_page.dart';
import 'package:tsave/pages/login/login_page.dart';
import 'package:tsave/pages/phone_verification/phone_verification_page.dart';
import 'package:tsave/pages/sign_up/sign_up_page.dart';
import 'configs/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'T-Save',
      theme: themeData,
      home: LoginPage(),
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => SignUpPage(),
        'verify': (BuildContext context) => PhoneVerificationPage(),
        'home': (BuildContext context) => Homepage(),
      },
    );
  }
}
