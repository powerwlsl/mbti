import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:mbti/screens/mbti_screen.dart';
import 'package:mbti/widgets/detail_list_view.dart';

class MainScreen extends StatefulWidget {
  final SharedPreferences prefs;
  MainScreen({this.prefs});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    String myMbtiType = widget.prefs.getString('mbtiType');
    Map myMbti = Mbtis.Types[myMbtiType];

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Card(
              elevation: 3,
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.all(20),
                    leading: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "My MBTI",
                            style: kSecondaryTextStyle,
                          ),
                          Text(
                            myMbtiType,
                            style: kPrimaryTextStyle.copyWith(
                              color: Color(myMbti["color"]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        myMbti["character"],
                      ),
                    ),
                    subtitle: Text(myMbti["summary"]),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: <Widget>[],
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(right: 20, left: 20, bottom: 0, top: 30),
            child: Text(
              "${myMbti["type"]} $myMbtiType 특징",
//            textAlign: TextAlign.center,
              style: kPrimaryMediumTextStyle.copyWith(color: Color(0xFF305675)),
            ),
          ),
//          TODO scroll is kinda weird cause it only moves itself, not the entire page
//https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html
          Expanded(child: DetailListView(myMbti: myMbti)),
        ],
      ),
    );
  }
}
