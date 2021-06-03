import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsave/components/brand/styled_page.dart';
import 'package:tsave/components/standard_button.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: StyledPage(
          child: Column(
            children: [
              Text(
                'Home Page',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    .copyWith(color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60, left: 32, right: 32),
                child: StandardButton(
                  "Logout",
                  customHeight: 60,
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('login', (route) => false);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
