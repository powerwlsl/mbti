import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/models/mbtis.dart';

class MainScreen extends StatefulWidget {
  final SharedPreferences prefs;
  MainScreen({this.prefs});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    String myMbti = widget.prefs.getString('mbtiType');
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 20, bottom: 10, right: 20, left: 20),
          decoration: kRoundedBoxDecoration,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text(
                      "My MBTI",
                      style: kSecondaryTextStyle,
                    ),
                    Text(
                      myMbti,
                      style: kPrimaryTextStyle.copyWith(
                        color: Color(Mbtis.Types[myMbti]["color"]),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "창의적이며 항상 웃을 거리를 찾아다니는 활발한 성격으로 사람들과 자유롭게 어울리기를 좋아하는 넘치는 열정의 소유자.",
                      style: kPrimarySmallTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
          decoration: kRoundedBoxDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("- 실증을 빨리 느낌"),
              Text("- 오래 못함"),
              Text("- 애들을 싫어함"),
              Text("- 혼자있는 시간을 즐김"),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
          decoration: kRoundedBoxDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Text("INFP와 잘 맞는 MBTI 타입: ENFP, ESTJ"),
              ),
              Container(
                child: Text("INFP와 적당히 맞는 MBTI 타입: ENFP, ESTJ"),
              ),
              Container(
                child: Text("INFP와 안 맞는 MBTI 타입: ENFP, ESTJ"),
              )
            ],
          ),
        ),
      ],
    );
  }
}
