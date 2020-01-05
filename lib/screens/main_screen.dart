import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/models/mbtis.dart';

class MainScreen extends StatefulWidget {
  final String type;
  MainScreen(this.type);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    String myMbtiType = widget.type;
    Map myMbti = Mbtis.Types[myMbtiType];

    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            child: Card(
              elevation: 3,
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.all(20),
                    leading: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "My MBTI",
                            style: kSecondaryTextStyle,
                          ),
                          Text(
                            myMbtiType,
                            style: kPrimaryTextStyle.copyWith(
                              color: Color(myMbti["color"]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        myMbti["character"],
                      ),
                    ),
                    subtitle: Text(myMbti["summary"]),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Text(
                  "$myMbtiType와의 궁합",
//            textAlign: TextAlign.center,
                  style: kPrimaryMediumTextStyle.copyWith(
                      color: Color(0xFF305675)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'images/best.png',
                          width: 30,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            myMbti["matching"]["best"].join(', '),
                            style: kPrimarySmallTextStyle,
                          ),
                        ),
                      ],
                    ),
//                    TODO make each mbti clickable?
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'images/normal.png',
                          width: 30,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            myMbti["matching"]["normal"].join(', '),
                            style: kPrimarySmallTextStyle,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'images/bad.png',
                          width: 30,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            myMbti["matching"]["bad"].join(', '),
                            style: kPrimarySmallTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: Text(
              "$myMbtiType 특징",
//            textAlign: TextAlign.center,
              style: kPrimaryMediumTextStyle.copyWith(color: Color(0xFF305675)),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              padding: EdgeInsets.all(5),
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
            ),
            childCount: myMbti["details"].length,
          ),
        ),
      ],
    );
  }
}
