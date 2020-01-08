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
            child: Card(
              elevation: 3,
              margin: EdgeInsets.all(20),
              child: ListTile(
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
                    myMbti["character_ko"],
                  ),
                ),
                subtitle: Text(myMbti["summary"]),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: MatchingMbtiList(
            selectedMbtiType: myMbtiType,
            selectedMbtiHash: myMbti,
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
