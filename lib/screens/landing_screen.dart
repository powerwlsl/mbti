import 'package:flutter/material.dart';
import 'package:mbti/screens/user_info_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mbti/constants.dart';

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
          Container(
            width: double.infinity,
            height: 300,
            child: Image.asset('images/Consul.png'),
          ),
          Container(
            height: 300,
            child: UserInfoScreen(
              prefs: widget.prefs,
            ),
          ),
        ],
      ),
    );
  }
}
