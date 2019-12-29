import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mbti/widgets/app_drawer.dart';
import 'package:mbti/models/mbtis.dart';

class MbtiListScreen extends StatefulWidget {
  @override
  _MbtiListScreenState createState() => _MbtiListScreenState();
}

class _MbtiListScreenState extends State<MbtiListScreen> {
  @override
  Widget build(BuildContext context) {
//   TODO: List with two column, go to type detail page upon click
//  TODO: Group by mbti group

    return Scaffold(
      appBar: AppBar(
        title: Text("MBTI 리스트"),
      ),
      body: GridView.builder(
        itemCount: Mbtis.Types.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, i) => MbtiGridListItem(i),
      ),
      drawer: AppDrawer(),
    );
  }
}

class MbtiGridListItem extends StatelessWidget {
  final int index;
  MbtiGridListItem(this.index);
  @override
  Widget build(BuildContext context) {
    final String type = Mbtis.Types[index];

    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          '/mbti',
//          TODO: idk how to pass argument
          arguments: type,
        );
      },
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/$type.png',
              height: 80,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              type,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
