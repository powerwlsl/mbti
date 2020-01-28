import 'package:flutter/material.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:mbti/widgets/expand_title_container.dart';

class MatchingMbtiList extends StatefulWidget {
  MatchingMbtiList({
    @required this.selectedMbtiType,
    @required this.selectedMbtiHash,
  });

  final String selectedMbtiType;
  final Map selectedMbtiHash;

  @override
  _MatchingMbtiListState createState() => _MatchingMbtiListState();
}

class _MatchingMbtiListState extends State<MatchingMbtiList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpandTitleContainer(
          title: "궁합",
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[200],
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
          ),
          padding: EdgeInsets.all(10),
          // margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for (var item in widget.selectedMbtiHash["matching"].keys)
                MatchingRateRow(
                  result: item,
                  selectedMbtiHash: widget.selectedMbtiHash,
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
      height: 45,
      child: Row(
        children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/$result.png',
                  width: 25,
                  color: Mbtis.EmojiColor[result],
                ),
                SizedBox(
                  width: 40,
                  child: Center(
                    child: Text(
                      result.replaceAll('_', ' ').toUpperCase(),
                      style: kSecondarySmallTextStyle.copyWith(
                          fontSize: 8, color: Mbtis.EmojiColor[result]),
                    ),
                  ),
                ),
              ]),
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
