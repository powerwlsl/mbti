import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:mbti/screens/mbti_screen.dart';
import 'package:mbti/widgets/app_drawer.dart';

class MbtiListScreen extends StatefulWidget {
  @override
  _MbtiListScreenState createState() => _MbtiListScreenState();
}

class _MbtiListScreenState extends State<MbtiListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F3FC),
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xffF1F3FC),
        title: Text(
          "MBTI 유형",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: Mbtis.Types.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.8,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
          ),
          itemBuilder: (context, i) => MbtiGridListItem(i),
        ),
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

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MbtiScreen(type)),
        );
      },

      //Todo inkwell
      // TODO new icons
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200],
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ],
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: type,
              child: Image.asset(
                'images/${Mbtis.Types[type]["character"]}.png',
                height: 25,
                color: Color(Mbtis.Types[type]["color"]),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                type,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(Mbtis.Types[type]["color"]),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Flexible(
              child: Text(
                Mbtis.Types[type]["character_ko"],
                style: kSecondarySmallTextStyle.copyWith(fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
