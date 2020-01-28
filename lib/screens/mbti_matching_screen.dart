import 'package:flutter/material.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/screens/mbti_screen.dart';
import 'package:mbti/widgets/custom_primary_flat_button.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:mbti/widgets/custom_dropdown_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share/share.dart';
import 'dart:io' show Platform;
import 'package:mbti/widgets/app_drawer.dart';

class MbtiMatchingScreen extends StatefulWidget {
  final SharedPreferences prefs;
  MbtiMatchingScreen({this.prefs});

  @override
  _MbtiMatchingScreenState createState() => _MbtiMatchingScreenState();
}

share(BuildContext context, String mbti_1, String mbti_2, String _result) {
  String link = '';
  String result = '';
  if (Platform.isAndroid) {
    link =
        "https://play.google.com/store/apps/details?id=com.hyejinahn.mbti&hl=ko";
  } else if (Platform.isIOS) {
    link = "https://apps.apple.com/kr/app/mbti/id1494694210";
  }
  switch (_result) {
    case "best":
      {
        result = "최고에요 🥰";
      }
      break;

    case "good":
      {
        result = "좋아요 😊";
      }
      break;

    case "normal":
      {
        result = "괜찮아요 🙂";
      }
      break;

    case "not_bad":
      {
        result = "나쁘지 않아요 🙃";
      }
      break;

    case "bad":
      {
        result = "별로에요 😟";
      }
      break;
  }
  Share.share(
      '$mbti_1와 $mbti_2의 궁합은? \n결과: $result \n\n다른 MBTI간의 궁합을 보고싶다면?\n$link');
}

class _MbtiMatchingScreenState extends State<MbtiMatchingScreen> {
  @override
  String _result;

  @override
  void initState() {
    super.initState();
    String mbti_1 = widget.prefs.getString('mbti_1');
    String mbti_2 = widget.prefs.getString('mbti_2');
    if (mbti_1 != null && mbti_2 != null) {
      _result = Mbtis.getResult(mbti_1, mbti_2);
    }
  }

  Widget build(BuildContext context) {
    String mbti_1 = widget.prefs.getString('mbti_1');
    String mbti_2 = widget.prefs.getString('mbti_2');
    List mbtiTypesList = Mbtis.Types.keys.toList();

    void setResult() {
      setState(() {
        _result = null;
      });

      Future.delayed(const Duration(milliseconds: 300), () {
        setState(() {
          _result = Mbtis.getResult(mbti_1, mbti_2);
        });
      });
    }

    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        elevation: 0,
        // todo 궁합 아이콘 바꾸기
        title: Text(
          "MBTI 궁합",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: _result == null
                ? null
                : () {
                    share(context, mbti_1, mbti_2, _result);
                  },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: AnimatedOpacity(
                key: Key('result'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    if (_result != null)
                      Image.asset(
                        'images/$_result.png',
                        color: Mbtis.EmojiColor[_result],
                      ),
                    if (_result != null)
                      Text(_result.replaceAll('_', ' ').toUpperCase(),
                          style: kPrimaryTextStyle.copyWith(
                            color: Mbtis.EmojiColor[_result],
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
                    keyString: 'mbti_1',
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
                    keyString: 'mbti_2',
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
                    'seeResultButton',
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
