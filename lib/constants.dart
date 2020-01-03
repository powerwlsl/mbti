import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

const kSecondaryTextStyle = TextStyle(
  fontSize: 15,
  color: Colors.grey,
  fontWeight: FontWeight.bold,
);

const kSecondarySmallTextStyle = TextStyle(
  fontSize: 12,
  color: Colors.grey,
  fontWeight: FontWeight.bold,
);

const kPrimaryTextStyle = TextStyle(
  fontSize: 30,
  color: Colors.black87,
  fontWeight: FontWeight.bold,
);

const kPrimaryMediumTextStyle = TextStyle(
  fontSize: 25,
  color: Colors.black87,
  fontWeight: FontWeight.bold,
);

const kPrimarySmallTextStyle = TextStyle(
  fontSize: 15,
  color: Colors.black87,
);

var kRoundedBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.black26,
      offset: Offset(0.5, 3.0),
      blurRadius: 10.0,
    ),
  ],
);

const kLightTextStyle = TextStyle(
  fontSize: 15,
  color: Colors.white,
);
