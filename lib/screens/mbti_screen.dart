import 'package:flutter/material.dart';
import 'package:mbti/screens/main_screen.dart';
import 'package:mbti/models/mbtis.dart';

class MbtiScreen extends StatefulWidget {
  final String type;
  MbtiScreen(this.type);

  @override
  _MbtiScreenState createState() => _MbtiScreenState();
}

class _MbtiScreenState extends State<MbtiScreen> {
  @override
  Widget build(BuildContext context) {
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
            onPressed: () {},
          )
        ],
      ),
      body: MbtiCustomScrollView(
        myMbti: Mbtis.Types[widget.type],
        myMbtiType: widget.type,
      ),
    );
  }
}
