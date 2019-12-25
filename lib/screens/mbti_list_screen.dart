import 'package:flutter/material.dart';

class MbtiListScreen extends StatefulWidget {
  @override
  _MbtiListScreenState createState() => _MbtiListScreenState();
}

class _MbtiListScreenState extends State<MbtiListScreen> {
  var _expanded = false;

  @override
  List<String> mtbis = [
    'INFP',
    'INFT',
    'ENDF',
    'ENSF',
    'INSF',
    'DKDD',
    'INFT',
    'ENDF',
    'ENSF',
    'DKDD',
    'INFT',
    'ENDF',
    'ENSF',
    'INSF',
  ];

  Widget build(BuildContext context) {
//   TODO: foldable list
    return Scaffold(
      appBar: AppBar(
        title: Text("MBTI 리스트"),
      ),
      body: ListView.builder(
        itemCount: mtbis.length,
        itemBuilder: (ctx, i) => Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(mtbis[i]),
                trailing: IconButton(
                  icon: _expanded
                      ? Icon(Icons.expand_less)
                      : Icon(Icons.expand_more),
                  onPressed: () {
                    setState(() {
                      _expanded = !_expanded;
                    });
                  },
                ),
              ),
              if (_expanded)
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                      "placeholder placeholder placeholder placeholder placeholder placeholder placeholderdfdfdsfsdfdsfs "),
                )
            ],
          ),
        ),
      ),
    );
  }
}
