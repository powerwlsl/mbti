import 'package:flutter/material.dart';
import 'package:mbti/widgets/matching_mbti_list.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/models/mbtis.dart';

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

    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          key: Key('mainScreenPage'),
          child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(myMbti["color"]),
                    child: Image.asset(
                      'images/${myMbti["character"]}.png',
                      color: Colors.white,
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: <Widget>[
                        Text(
                          myMbtiType,
                          style: kPrimaryMediumTextStyle,
                        ),
                        SizedBox(width: 20),
                        Flexible(child: Text(myMbti["summary"])),
                      ],
                    ),
                  ),
                ],
              )),
        ),
        SliverToBoxAdapter(
          child: MatchingMbtiList(
            selectedMbtiType: myMbtiType,
            selectedMbtiHash: myMbti,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
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
