import 'package:flutter/material.dart';

class MbtiScreen extends StatefulWidget {
  final String type;
  MbtiScreen(this.type);

  @override
  _MbtiScreenState createState() => _MbtiScreenState();
}

class _MbtiScreenState extends State<MbtiScreen> {
  @override
  Widget build(BuildContext context) {
    final MbtiScreen args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.type),
      ),
      body: Container(),
    );
  }
}
