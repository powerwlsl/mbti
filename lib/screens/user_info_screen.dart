import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mbti/models/mbtis.dart';

class UserInfoScreen extends StatefulWidget {
  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  String mbtiType;
  String age;
  String gender;

  DropdownButton<String> mbtiTypePicker() {
    return DropdownButton(
      hint: new Text("MBTI type", textAlign: TextAlign.center),
      items: dropdownListItem(Mbtis.Types),
      value: mbtiType,
      onChanged: (val) {
        setState(() {
          mbtiType = val;
        });
      },
    );
  }

//  TODO: input field might be better
  DropdownButton<String> agePicker() {
    var ageRange = [for (var i = 1930; i < 2020; i += 1) i.toString()];
    return DropdownButton(
      items: dropdownListItem(ageRange),
      hint: new Text("Age", textAlign: TextAlign.center),
      value: age,
      onChanged: (val) {
        setState(() {
          age = val;
        });
      },
    );
  }

  DropdownButton<String> genderPicker() {
    var genderList = ["MALE", "FEMALE"];
    return DropdownButton(
      items: dropdownListItem(genderList),
      hint: new Text("Gender", textAlign: TextAlign.center),
      value: gender,
      onChanged: (val) {
        gender = val;
      },
    );
  }

  List<DropdownMenuItem<String>> dropdownListItem(List<String> itemList) {
    return itemList
        .map((value) => DropdownMenuItem(
              child: Center(child: Text(value)),
              value: value,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MBTI"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      mbtiTypePicker(),
                      agePicker(),
                      genderPicker(),
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 20,
              ),
              padding: EdgeInsets.all(20),
              child: RaisedButton(
                padding: EdgeInsets.all(20),
                child: Text("Done"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/main');
                },
                color: Colors.blue,
                colorBrightness: Brightness.dark,
                disabledColor: Colors.blueGrey,
                highlightColor: Colors.blueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
