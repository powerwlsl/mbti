import 'package:flutter/material.dart';
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
    return Text(Mbtis.Types[index]);
  }
}
