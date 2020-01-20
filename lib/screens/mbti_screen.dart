import 'package:flutter/material.dart';
import 'package:mbti/screens/main_screen.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:share/share.dart';
import 'dart:io' show Platform;

class MbtiScreen extends StatefulWidget {
  final String type;
  MbtiScreen(this.type);

  @override
  _MbtiScreenState createState() => _MbtiScreenState();
}

share(BuildContext context, String summary, String mbti) {
  String link;

  if (Platform.isAndroid) {
    link =
        "https://play.google.com/store/apps/details?id=com.hyejinahn.mbti&hl=ko";
  } else if (Platform.isIOS) {
    link = "https://apps.apple.com/kr/app/mbti/id1494694210";
  }

  Share.share(
      '$summary, $mbti 성격유형에 대해 더 알고 싶다면? \n\nMBTI 앱에서 확인하세요!😀 \n$link');
}

class _MbtiScreenState extends State<MbtiScreen> {
  @override
  Widget build(BuildContext context) {
    Map mbti = Mbtis.Types[widget.type];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        elevation: 0,
        title: Text(
          widget.type,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              share(context, mbti["summary"].toString().replaceAll(".", ""),
                  widget.type);
            },
          )
        ],
      ),
      body: MbtiCustomScrollView(
        myMbti: mbti,
        myMbtiType: widget.type,
      ),
    );
  }
}
