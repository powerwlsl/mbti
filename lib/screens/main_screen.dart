import 'package:flutter/material.dart';
import 'package:mbti/widgets/matching_mbti_list.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:mbti/widgets/expand_title_container.dart';

class MainScreen extends StatefulWidget {
  final String type;
  MainScreen(this.type);

  @override
  _MainScreenState createState() => _MainScreenState();
}

// TODO share button
class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    String myMbtiType = widget.type;
    Map myMbti = Mbtis.Types[myMbtiType];

// FIX add the summary line on mbti list screen

    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          key: Key('mainScreenPage'),
          child: Card(
            elevation: 3,
            margin: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(20),
              // height: 200,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(myMbti["color"]),
                        child: Image.asset(
                          'images/${myMbti["character"]}.png',
                          color: Colors.white,
                          height: 30,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              myMbtiType,
                              style: kPrimaryMediumTextStyle,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              myMbti["character_ko"],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(myMbti["summary"], style: TextStyle(fontSize: 15))
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
        SliverToBoxAdapter(
          child: MatchingMbtiList(
            selectedMbtiType: myMbtiType,
            selectedMbtiHash: myMbti,
          ),
        ),
        DividerWithMargin(),
        SliverToBoxAdapter(
          child: ExpandTitleContainer(
            title: "유명인",
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              children: <Widget>[
                for (var i in [
                  "sth",
                  "안이요 아아ㅇ",
                  "dkfj dkf",
                  "안하하",
                  "이이나아아",
                  "ddd",
                  "dd",
                  "하하하하하"
                ])
                  Container(
                    width: 60,
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20,
                          child: Placeholder(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "$i",
                          style: kSecondarySmallTextStyle,
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
        DividerWithMargin(),
        SliverToBoxAdapter(
          child: ExpandTitleContainer(
            title: "특징",
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: index.isEven ? Color(0xFFF4F4F4) : Color(0xFFE5EBF0),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                title: Text(
                  myMbti["details"][index],
                ),
              ),
            ),
            childCount: myMbti["details"].length,
          ),
        ),
        DividerWithMargin(),
      ],
    );
  }
}

class DividerWithMargin extends StatelessWidget {
  const DividerWithMargin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Divider(
          color: Colors.grey[300],
        ),
      ),
    );
  }
}
