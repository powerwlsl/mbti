import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainScreen extends StatelessWidget {
  final SharedPreferences prefs;
  MainScreen({this.prefs});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MBTI"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text("나의 MBTI: INFP"),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text("- 실증을 빨리 느낌"),
                Text("- 오래 못함"),
                Text("- 애들을 싫어함"),
                Text("- 혼자있는 시간을 즐김"),
              ],
            ),
          ),
          Expanded(
            child: Column(
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
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Center(child: Icon(Icons.list)),
                      Text("MBTI 유형별 특징"),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/mbtis');
                  },
                ),
                FlatButton(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Center(child: Icon(Icons.pie_chart)),
                      Text("MBTI 간 매칭률 보기"),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/mbti_matching');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
