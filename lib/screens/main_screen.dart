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
  bool _expandCharacters = false;
  bool _expandStars = false;
  Widget build(BuildContext context) {
    String myMbtiType = widget.type;
    Map myMbti = Mbtis.Types[myMbtiType];

    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          key: Key('mainScreenPage'),
          child: Container(
              decoration: BoxDecoration(
                color: Color(0xffE2F2FF),
              ),
              padding:
                  EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 10),
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                'images/${myMbti["character"]}.png',
                                color: Color(myMbti["color"]),
                                height: 30,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              myMbtiType,
                              style: kPrimaryMediumTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Flexible(
                            child: Text(
                          myMbti["summary"],
                          style: TextStyle(fontSize: 17),
                        )),
                      ],
                    ),
                  ),
                ],
              )),
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
        SliverToBoxAdapter(
          child: ExpandTitleContainer(
            expanded: _expandStars,
            title: "유명인",
            toggleExpand: () {
              setState(() {
                _expandStars = !_expandStars;
              });
            },
            icon: Image.asset(
              'images/stars2.png',
              width: 70,
            ),
          ),
        ),
        if (_expandStars)
          SliverToBoxAdapter(
            child: Container(),
          ),
        SliverToBoxAdapter(
          child: ExpandTitleContainer(
            expanded: _expandCharacters,
            title: "특징",
            toggleExpand: () {
              setState(() {
                _expandCharacters = !_expandCharacters;
              });
            },
            icon: Image.asset(
              'images/characters.png',
              width: 70,
            ),
          ),
        ),
        if (_expandCharacters)
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
      ],
    );
  }
}
