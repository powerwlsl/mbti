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
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        title,
        style: kPrimaryMediumTextStyle.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
