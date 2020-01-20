import 'package:flutter/material.dart';
import 'package:mbti/widgets/matching_mbti_list.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:mbti/widgets/expand_title_container.dart';
import 'dart:io';
import 'package:share/share.dart';
import 'dart:io' show Platform;

class MainScreen extends StatefulWidget {
  final String type;
  MainScreen(this.type);

  @override
  _MainScreenState createState() => _MainScreenState();
}

// TODO add/fix celebrities suggestion button
// TODO link preview image
share(BuildContext context, String summary, String mbti) {
  String link;
  if (Platform.isAndroid) {
    link =
        "https://play.google.com/store/apps/details?id=com.hyejinahn.mbti&hl=ko";
  } else if (Platform.isIOS) {
    link = "https://apps.apple.com/kr/app/mbti/id1494694210";
  }

  Share.share(
      '저는 $summary, $mbti 성격유형입니다.😙 \n\n 당신의 MBTI 성격유형은 무엇인가요? \n$link');
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    String myMbtiType = widget.type;
    Map myMbti = Mbtis.Types[myMbtiType];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        title: Text(
          "나의 MBTI",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              share(context, myMbti['summary'].toString().replaceAll(".", ""),
                  myMbtiType);
            },
          )
        ],
      ),
      body: MbtiCustomScrollView(myMbti: myMbti, myMbtiType: myMbtiType),
    );
  }
}

class MbtiCustomScrollView extends StatelessWidget {
  const MbtiCustomScrollView({
    Key key,
    @required this.myMbti,
    @required this.myMbtiType,
  }) : super(key: key);

  final Map myMbti;
  final String myMbtiType;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          key: Key('mainScreenPage'),
          child: Card(
            elevation: 3,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          child: CelebrityTitle("국내"),
        ),
        SliverToBoxAdapter(
          child: AvatarsWidget(myMbti["celebrities_ko"], '${myMbtiType}'),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: CelebrityTitle("해외"),
        ),
        SliverToBoxAdapter(
          child: AvatarsWidget(myMbti["celebrities"], '${myMbtiType}i'),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
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
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    myMbti["details"][index],
                  ),
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

getImage(path) {
  if (FileSystemEntity.typeSync(path) != FileSystemEntityType.notFound) {
    return AssetImage('images/user.png');
  } else {
    return AssetImage(path);
  }
  ;
}

class AvatarsWidget extends StatelessWidget {
  AvatarsWidget(this.avatars, this.imageName);
  final List avatars;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
          children: avatars.asMap().entries.map((MapEntry entry) {
        return Container(
          width: 60,
          margin: EdgeInsets.only(right: 5, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 20,
                backgroundImage:
                    getImage('images/avatars/${imageName}_${entry.key}.jpg'),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                entry.value,
                style: kSecondarySmallTextStyle.copyWith(fontSize: 10),
              ),
            ],
          ),
        );
      }).toList()),
    );
  }
}

class CelebrityTitle extends StatelessWidget {
  final String title;
  CelebrityTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
          color: Colors.grey,
        ),
      ),
    );
  }
}
