import 'package:flutter/material.dart';
import 'package:mbti/constants.dart';

class MatchingMbtiList extends StatelessWidget {
  const MatchingMbtiList({
    Key key,
    @required this.selectedMbtiType,
    @required this.selectedMbtiHash,
  }) : super(key: key);

  final String selectedMbtiType;
  final Map selectedMbtiHash;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          child: Text(
            "$selectedMbtiType의 궁합",
//            textAlign: TextAlign.center,
            style: kPrimaryMediumTextStyle.copyWith(color: Color(0xFF305675)),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    'images/best.png',
                    width: 30,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      selectedMbtiHash["matching"]["best"].join(', '),
                      style: kPrimarySmallTextStyle,
                    ),
                  ),
                ],
              ),
//                    TODO make each mbti clickable?
              Row(
                children: <Widget>[
                  Image.asset(
                    'images/normal.png',
                    width: 30,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      selectedMbtiHash["matching"]["normal"].join(', '),
                      style: kPrimarySmallTextStyle,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Image.asset(
                    'images/bad.png',
                    width: 30,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      selectedMbtiHash["matching"]["bad"].join(', '),
                      style: kPrimarySmallTextStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
