import 'package:flutter/material.dart';
import 'package:mbti/widgets/custom_primary_flat_button.dart';
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
    void setResult() {
      setState(() {
        _result = "Good";
      });
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomDropdownButton(
              dropdownItemList: mbtiTypesList,
              hintString: "Select MBTI",
              value: widget.prefs.getString('mbtiType'),
              onChangedCallback: (value) {
                setState(() {
                  mbti_1 = value;
                });
              },
            ),
            CustomDropdownButton(
              dropdownItemList: mbtiTypesList,
              hintString: "Select MBTI",
              value: mbti_2,
              onChangedCallback: (value) {
                setState(() {
                  mbti_2 = value;
                });
              },
            ),
            CustomPrimaryFlatButton(
              setResult,
              "See Result",
            ),
            if (_result != null)
              Container(
                child: Text(_result),
              )
          ],
        ),
      ),
    );
  }
}
