import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mbti/widgets/custom_dropdown_button.dart';
import 'package:mbti/widgets/custom_primary_flat_button.dart';
import 'package:mbti/main.dart';

class UserInfoScreen extends StatefulWidget {
  final SharedPreferences prefs;
  final bool isLandingPage;

  UserInfoScreen({
    this.prefs,
    this.isLandingPage = false,
  });

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  String mbtiType;
  String age;
  String gender;
  Map mbtis = Mbtis.Types;

  List<String> genderList = ["남성", "여성"];
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

  void onPressed() async {
    final prefs = await SharedPreferences.getInstance();

    prefs.setString('mbtiType', mbtiType);
    prefs.setString('age', age);
    prefs.setString('gender', gender);

    if (widget.isLandingPage) {
      Navigator.pushReplacementNamed(
        context,
        '/home',
        arguments: MyHomePage(
          prefs: prefs,
        ),
      );
    } else {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Saved!"),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    mbtiType = widget.prefs.getString('mbtiType');
    age = widget.prefs.getString('age');
    gender = widget.prefs.getString('gender');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      CustomDropdownButton(
                        hasIcon: true,
                        dropdownItemList: mbtis.keys.toList(),
                        hintString: "MBTI 유형",
                        value: mbtiType,
                        onChangedCallback: (value) {
                          setState(() {
                            mbtiType = value;
                          });
                        },
                      ),
                      CustomDropdownButton(
                        dropdownItemList: ageRangeList,
                        hintString: "나이",
                        value: age,
                        onChangedCallback: (value) {
                          setState(() {
                            age = value;
                          });
                        },
                      ),
                      CustomDropdownButton(
                        dropdownItemList: genderList,
                        hintString: "성별",
                        value: gender,
                        onChangedCallback: (value) {
                          setState(() {
                            gender = value;
                          });
                        },
                      ),
                      CustomPrimaryFlatButton(
                          (mbtiType != null && age != null && gender != null)
                              ? onPressed
                              : null,
                          "저장")
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
