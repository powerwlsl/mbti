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
    print(widget.type);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          widget.type,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: MainScreen(widget.type),
    );
  }
}
