import 'package:flutter/material.dart';

class CustomPrimaryFlatButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  CustomPrimaryFlatButton(this.onPressed, this.title);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      disabledColor: Color(0xFFE0E0E0),
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
      color: Theme.of(context).accentColor,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(50),
      ),
    );
  }
}
