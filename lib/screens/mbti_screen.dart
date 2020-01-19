import 'package:flutter/material.dart';

import 'package:mbti/screens/main_screen.dart';

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
      ),
      body: MainScreen(widget.type),
    );
  }
}
