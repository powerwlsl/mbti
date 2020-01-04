import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:mbti/screens/mbti_screen.dart';

class MbtiListScreen extends StatefulWidget {
  @override
  _MbtiListScreenState createState() => _MbtiListScreenState();
}

class _MbtiListScreenState extends State<MbtiListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: Mbtis.Types.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 4 / 5,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemBuilder: (context, i) => MbtiGridListItem(i),
      ),
    );
  }
}

class MbtiGridListItem extends StatelessWidget {
  final int index;
  MbtiGridListItem(this.index);

  @override
  Widget build(BuildContext context) {
    final String type = Mbtis.Types.keys.toList()[index];

    return FlatButton(
      padding: EdgeInsets.all(5),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MbtiScreen(type)),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/${Mbtis.Types[type]["character"]}.png',
              height: 40,
              width: 40,
              color: Color(Mbtis.Types[type]["color"]),
            ),
            Center(
              child: Text(
                type,
                style: TextStyle(
                  fontSize: 25,
                  color: Color(Mbtis.Types[type]["color"]),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                Mbtis.Types[type]["character"],
                style: kSecondarySmallTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
