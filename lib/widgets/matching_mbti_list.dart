import 'package:flutter/material.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/models/mbtis.dart';

class MatchingMbtiList extends StatelessWidget {
  MatchingMbtiList({
    @required this.selectedMbtiType,
    @required this.selectedMbtiHash,
  });

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
            "$selectedMbtiType 궁합",
//            textAlign: TextAlign.center,
            style: kPrimaryMediumTextStyle.copyWith(color: Color(0xFF305675)),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for (var item in selectedMbtiHash["matching"].keys)
                MatchingRateRow(
                  result: item,
                  selectedMbtiHash: selectedMbtiHash,
                ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (var result in Mbtis.MatchingResults)
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'images/$result.png',
                            width: 15,
                            color: Mbtis.EmojiColor[result],
                          ),
                          SizedBox(width: 5),
                          Text(
                            result.replaceAll("_", " ").toUpperCase(),
                            style: kSecondarySmallTextStyle.copyWith(
                                fontWeight: FontWeight.normal, fontSize: 10),
                          ),
                          SizedBox(width: 10),
                        ],
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MatchingRateRow extends StatelessWidget {
  MatchingRateRow({this.result, this.selectedMbtiHash});
  final String result;
  final Map selectedMbtiHash;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Row(
        children: <Widget>[
          Image.asset(
            'images/$result.png',
            width: 30,
            color: Mbtis.EmojiColor[result],
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              selectedMbtiHash["matching"][result].join(', '),
              style: kPrimarySmallTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
