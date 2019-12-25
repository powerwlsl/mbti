import 'package:flutter/material.dart';

class CustomPrimaryButton extends StatelessWidget {
  final Function buttonOnPressed;
  final String buttonText;

  CustomPrimaryButton({
    this.buttonOnPressed,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(20),
      child: Text(buttonText),
      onPressed: buttonOnPressed(),
      color: Colors.blue,
      colorBrightness: Brightness.dark,
      disabledColor: Colors.blueGrey,
      highlightColor: Colors.blueAccent,
    );
  }
}
