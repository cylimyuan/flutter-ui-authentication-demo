import 'package:flutter/material.dart';

class StandardTitle extends StatelessWidget {
  final String title;

  const StandardTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
