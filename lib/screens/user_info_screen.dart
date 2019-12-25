import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserInfoScreen extends StatefulWidget {
  final SharedPreferences prefs;
  UserInfoScreen({this.prefs});

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  String mbtiType;
  String age;
  String gender;

  List<String> genderList = ["MALE", "FEMALE"];
  List<String> ageRangeList = [
    for (var i = 1930; i < 2020; i += 1) i.toString()
  ];

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
                      UserInfoDropdownButton(
                        dropdownItemList: Mbtis.Types,
                        hintString: "MBTI types",
                        value: mbtiType,
                        onChangedCallback: (value) {
                          setState(() {
                            mbtiType = value;
                          });
                        },
                      ),
                      //  TODO: input field might be better
                      UserInfoDropdownButton(
                        dropdownItemList: ageRangeList,
                        hintString: "Age",
                        value: age,
                        onChangedCallback: (value) {
                          setState(() {
                            age = value;
                          });
                        },
                      ),

                      UserInfoDropdownButton(
                        dropdownItemList: genderList,
                        hintString: "Gender",
                        value: gender,
                        onChangedCallback: (value) {
                          setState(() {
                            gender = value;
                          });
                        },
                      ),
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
                child: Text("Next"),
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setString('mbtiType', mbtiType);
                  prefs.setString('age', age);
                  prefs.setString('gender', gender);

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

class UserInfoDropdownButton extends StatelessWidget {
  final List<String> dropdownItemList;
  final String hintString;
  final String value;
  final Function onChangedCallback;

  UserInfoDropdownButton({
    @required this.dropdownItemList,
    @required this.hintString,
    @required this.value,
    @required this.onChangedCallback,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: dropdownItemList
          .map((value) => DropdownMenuItem(
                child: Center(child: Text(value)),
                value: value,
              ))
          .toList(),
      hint: new Text(hintString, textAlign: TextAlign.center),
      value: value,
      onChanged: (selectedVal) {
        onChangedCallback(selectedVal);
      },
    );
  }
}
