import 'package:flutter/material.dart';

class MbtiMatchingScreen extends StatelessWidget {
  @override
  DropdownButton<String> dropdownButton() {
    return DropdownButton(
      items: [
        DropdownMenuItem(
          child: Center(
            child: Text("INFT"),
          ),
          value: "INFT",
        ),
        DropdownMenuItem(
          child: Center(
            child: Text("ENFI"),
          ),
          value: "ENFI",
        ),
      ],
      onChanged: (val) {},
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MBTI matching rate"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              dropdownButton(),
              dropdownButton(),
            ],
          ),
          FlatButton(
            child: Text("Get Matching Rate"),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
