import 'package:flutter/material.dart';

class DetailListView extends StatelessWidget {
  const DetailListView({
    Key key,
    @required this.myMbti,
  }) : super(key: key);

  final Map myMbti;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: index.isEven ? Color(0xFFF4F4F4) : Color(0xFFE5EBF0),
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              leading: Icon(
                Icons.done,
              ),
              title: Text(
                myMbti["details"][index],
              ),
            ),
          );
        },
        itemCount: myMbti["details"].length,
      ),
    );
  }
}
