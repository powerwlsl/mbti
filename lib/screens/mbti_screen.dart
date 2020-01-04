import 'package:flutter/material.dart';
import 'package:mbti/widgets/detail_list_view.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:mbti/constants.dart';

class MbtiScreen extends StatefulWidget {
  final String type;
  MbtiScreen(this.type);

  @override
  _MbtiScreenState createState() => _MbtiScreenState();
}

class _MbtiScreenState extends State<MbtiScreen> {
  @override
  Widget build(BuildContext context) {
    Map myMbti = Mbtis.Types[widget.type];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          widget.type,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(right: 20, left: 20, bottom: 0, top: 30),
            child: Text(
              "${widget.type}(${myMbti["type"]}) 특징",
//            textAlign: TextAlign.center,
              style: kPrimaryMediumTextStyle.copyWith(color: Color(0xFF305675)),
            ),
          ),
          Expanded(
            flex: 2,
            child: DetailListView(myMbti: myMbti),
          ),
        ],
      ),
    );
  }
}
