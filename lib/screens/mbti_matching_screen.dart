import 'package:flutter/material.dart';
import 'package:mbti/widgets/app_drawer.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:mbti/widgets/custom_dropdown_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MbtiMatchingScreen extends StatefulWidget {
  final SharedPreferences prefs;
  MbtiMatchingScreen({this.prefs});

  @override
  _MbtiMatchingScreenState createState() => _MbtiMatchingScreenState();
}

class _MbtiMatchingScreenState extends State<MbtiMatchingScreen> {
  @override
  String mbti_1;
  String mbti_2;
  String _result;

  Widget build(BuildContext context) {
    List mbtiTypesList = Mbtis.Types.keys.toList();
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CustomDropdownButton(
                dropdownItemList: mbtiTypesList,
                hintString: "My MBTI types",
                value: widget.prefs.getString('mbtiType'),
                onChangedCallback: (value) {
                  setState(() {
                    mbti_1 = value;
                  });
                },
              ),
              CustomDropdownButton(
                dropdownItemList: mbtiTypesList,
                hintString: "MBTI types",
                value: mbti_2,
                onChangedCallback: (value) {
                  setState(() {
                    mbti_2 = value;
                  });
                },
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _result = "Good";
                  });
                },
                color: Colors.blue,
                colorBrightness: Brightness.dark,
                disabledColor: Colors.blueGrey,
                highlightColor: Colors.blueAccent,
                child: Text("See result"),
              ),
              if (_result != null)
                Container(
                  child: Text(_result),
                )
            ],
          ),
        ),
      ),
    );
  }
}
