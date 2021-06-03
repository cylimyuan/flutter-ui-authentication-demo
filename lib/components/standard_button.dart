import 'package:flutter/material.dart';

class StandardButton extends StatelessWidget {
  final String title;
  final double customWidth;
  final double customHeight;
  final Function onPressed;
  const StandardButton(this.title,
      {this.customWidth, this.customHeight, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(15.0))),
      child: Container(
        width: customWidth,
        height: customHeight,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.white,
              width: 3,
            )),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ),
      onPressed: this.onPressed,
    );
  }
}
