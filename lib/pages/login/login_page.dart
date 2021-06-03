import 'package:flutter/material.dart';
import 'package:tsave/components/brand/login_logo.dart';
import 'package:tsave/components/brand/styled_page.dart';
import 'package:tsave/components/standard_button.dart';
import 'package:tsave/components/standard_text_field.dart';
import 'package:tsave/components/standard_title.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: StyledPage(
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    final focusNode = FocusScope.of(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: LoginLogo(MediaQuery.of(context).size.width / 1.2),
          ),
          StandardTitle('Welcome back!'),
          StandardTextField(
            'Mobile Number',
            inputType: TextInputType.phone,
            focusNode: focusNode,
            action: TextInputAction.next,
          ),
          StandardTextField('Password', obscureText: true, onActionPressed: () {
            FocusScope.of(context).unfocus();
          }),
          Padding(
            padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
            child: StandardButton(
              'Get me saving!',
              customHeight: 60,
              customWidth: MediaQuery.of(context).size.width * .6,
              onPressed: () {
                Navigator.of(context).pushNamed('home');
              },
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('register');
              },
              child: Text(
                'Register Now',
                style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 16,
                    ),
              ))
        ],
      ),
    );
  }

  void _login() {}
}
