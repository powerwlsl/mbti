import 'package:flutter/material.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/screens/mbti_screen.dart';
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
  String _result;
  Color resultColor;

  Widget build(BuildContext context) {
    String mbti_1 = widget.prefs.getString('mbti_1');
    String mbti_2 = widget.prefs.getString('mbti_2');
    List mbtiTypesList = Mbtis.Types.keys.toList();

    void setResult() {
      setState(() {
        _result = null;
      });

      Future.delayed(const Duration(milliseconds: 300), () {
        Mbtis.Types[mbti_1]["matching"].forEach((key, value) {
          if (value.contains(mbti_2)) {
            setState(() {
              _result = key;
            });

            if (_result == "best") {
              resultColor = Colors.green;
            } else if (_result == "normal") {
              resultColor = Colors.orange;
            } else {
              resultColor = Colors.red;
            }
          }
        });
      });
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: AnimatedOpacity(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    if (_result != null)
                      Image.asset(
                        'images/$_result.png',
                        color: resultColor,
                      ),
                    if (_result != null)
                      Text(_result.toUpperCase(),
                          style: kPrimaryTextStyle.copyWith(
                            color: resultColor,
                          )),
                  ],
                ),
                opacity: _result != null ? 1.0 : 0,
                duration: Duration(milliseconds: 500),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomDropdownButton(
                    hasIcon: true,
                    dropdownItemList: mbtiTypesList,
                    hintString: "첫 번째 MBTI 유형을 선택해주세요",
                    value: widget.prefs.getString('mbti_1'),
                    onChangedCallback: (value) {
                      widget.prefs.setString('mbti_1', value);
                      setState(() {
                        mbti_1 = value;
                      });
                    },
                  ),
                  if (mbti_1 != null)
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MbtiScreen(mbti_1)));
                      },
                      child: Text(
                        "$mbti_1 성격유형 보기",
                        style: kPrimarySmallTextStyle.copyWith(
                          color: Color(0xFF305675),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomDropdownButton(
                    hasIcon: true,
                    dropdownItemList: mbtiTypesList,
                    hintString: "두 번째 MBTI 유형을 선택해주세요",
                    value: widget.prefs.getString('mbti_2'),
                    onChangedCallback: (value) {
                      widget.prefs.setString('mbti_2', value);
                      setState(() {
                        mbti_2 = value;
                      });
                    },
                  ),
                  if (mbti_2 != null)
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MbtiScreen(mbti_2)));
                      },
                      child: Text(
                        "$mbti_2 성격유형 보기",
                        style: kPrimarySmallTextStyle.copyWith(
                          color: Color(0xFF305675),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomPrimaryFlatButton(
                    (mbti_1 != null && mbti_2 != null) ? setResult : null,
                    "궁합보기",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
