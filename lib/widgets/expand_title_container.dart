import 'package:flutter/material.dart';
import 'package:mbti/constants.dart';

class ExpandTitleContainer extends StatelessWidget {
  final String title;

  ExpandTitleContainer({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
        title: Text(
          title,
          style: kPrimaryMediumTextStyle,
        ),
      ),
    );
  }
}
