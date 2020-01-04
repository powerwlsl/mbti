import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:mbti/screens/mbti_screen.dart';

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

    return Column(
      children: <Widget>[
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MbtiScreen(myMbtiType)),
              );
            },
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
        ),
        Text("$myMbtiType 특징"),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(20),
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: index.isEven ? Color(0xFFF4F4F4) : Color(0xFFE5EBF0),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.done,
                    ),
                    title: Text(
                      myMbti["details"][index],
                    ),
                  ),
                );
              },
              itemCount: myMbti["details"].length,
            ),
          ),
        )
      ],
    );
  }
}
