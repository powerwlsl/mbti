import 'package:flutter/material.dart';
import 'package:mbti/screens/user_info_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LandingScreen extends StatefulWidget {
  @override
  final SharedPreferences prefs;
  LandingScreen({this.prefs});
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
//          TODO 이미지 추가
          SizedBox(
            height: 30,
          ),
          Container(
            height: 300,
            child: Image.asset('images/logo.png'),
          ),
          Container(
            height: 300,
            child: UserInfoScreen(
              prefs: widget.prefs,
              isLandingPage: true,
            ),
          ),
        ],
      ),
    );
  }
}
