import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tsave/components/brand/login_logo.dart';
import 'package:tsave/components/brand/styled_page.dart';
import 'package:tsave/components/standard_button.dart';
import 'package:tsave/components/standard_title.dart';

class PhoneVerificationPage extends StatefulWidget {
  PhoneVerificationPage({Key key}) : super(key: key);

  @override
  _PhoneVerificationPageState createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  var validPin = false;

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

  Widget _buildContent() => SingleChildScrollView(
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
                  'Cancel',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: LoginLogo(MediaQuery.of(context).size.width / 1.2),
            ),
            StandardTitle('Are you a real person?'),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(15),
                      fieldHeight: 60,
                      fieldWidth: 50,
                      inactiveFillColor: Colors.white,
                      activeFillColor: Colors.white,
                      activeColor: Colors.white,
                      selectedFillColor: Colors.white,
                      disabledColor: Colors.white,
                      inactiveColor: Colors.white,
                      selectedColor: Colors.white),
                  showCursor: false,
                  autoFocus: true,
                  onChanged: (pin) {
                    setState(() {
                      validPin = pin.length == 4;
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
              child: StandardButton(
                'Yes, I am!',
                customHeight: 60,
                customWidth: MediaQuery.of(context).size.width * .6,
                onPressed: validPin
                    ? () {
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil('home', (route) => false);
                      }
                    : null,
              ),
            ),
            Text(
              'Didnt get the code? ',
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Click here',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                ),
                Text(
                  ' and we\'ll resent you',
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      );
}
