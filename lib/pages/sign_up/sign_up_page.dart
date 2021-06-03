import 'package:flutter/material.dart';
import 'package:tsave/components/brand/sign_up_logo.dart';
import 'package:tsave/components/brand/styled_page.dart';
import 'package:tsave/components/standard_button.dart';
import 'package:tsave/components/standard_text_field.dart';
import 'package:tsave/components/standard_title.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.chevron_left_outlined,
                color: Colors.white,
              ),
              label: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: SignUpLogo(MediaQuery.of(context).size.width / 2),
          ),
          StandardTitle('Jump aboard your savings journey!'),
          StandardTextField(
            'Email',
            inputType: TextInputType.emailAddress,
            action: TextInputAction.next,
            focusNode: focusNode,
          ),
          StandardTextField(
            'Mobile Number',
            inputType: TextInputType.phone,
            focusNode: focusNode,
            action: TextInputAction.next,
          ),
          StandardTextField(
            'Password',
            obscureText: true,
            onActionPressed: () {
              FocusScope.of(context).unfocus();
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By signing up, you hereby agree to the ',
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'terms & conditions',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: StandardButton(
              'Let\'s Start',
              customHeight: 60,
              customWidth: MediaQuery.of(context).size.width * .6,
              onPressed: () {
                Navigator.of(context).pushNamed('verify');
              },
            ),
          )
        ],
      ),
    );
  }
}
