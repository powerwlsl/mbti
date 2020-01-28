import 'package:flutter/material.dart';
import 'package:mbti/widgets/matching_mbti_list.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/models/mbtis.dart';
import 'package:mbti/widgets/expand_title_container.dart';
import 'dart:io';
import 'package:share/share.dart';
import 'dart:io' show Platform;
import 'package:mbti/widgets/app_drawer.dart';

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
      backgroundColor: Color(0xffF1F3FC),
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xffF1F3FC),
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
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                // Add one stop for each color. Stops should increase from 0 to 1
                stops: [0.1, 0.3, 0.8, 0.9],
                colors: [
                  // Colors are easy thanks to Flutter's Colors class.

                  Color(0xff93A9F4),

                  Color(0xffB2C1F4),

                  Color(0xffFFD9ED),
                  Color(0xffFFC7E4),
                ],
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200],
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Hero(
                        tag: myMbtiType,
                        child: Image.asset(
                          'images/${myMbti["character"]}.png',
                          color: Color(myMbti["color"]),
                          height: 55,
                        ),
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
        SliverToBoxAdapter(
          child: SizedBox(height: 30),
        ),
        SliverToBoxAdapter(
          child: MatchingMbtiList(
            selectedMbtiType: myMbtiType,
            selectedMbtiHash: myMbti,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 30),
        ),
        SliverToBoxAdapter(
          // todo horizontal slide
          child: ExpandTitleContainer(
            title: "유명인",
          ),
        ),
        SliverToBoxAdapter(
          child: AvatarsWidget(myMbti["celebrities_ko"], '${myMbtiType}', "국내"),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: AvatarsWidget(myMbti["celebrities"], '${myMbtiType}i', "해외"),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 30),
        ),
        SliverToBoxAdapter(
          child: ExpandTitleContainer(
            title: "특징",
          ),
        ),
        // TODO inkwell
        SliverPadding(
          padding: EdgeInsets.all(10.0),
          sliver: SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                    ],
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.face,
                        color: Colors.red,
                      ),
                      Text(Mbtis.ExploreCategories[index],
                          style: kPrimarySmallTextStyle)
                    ],
                  ),
                ),
              );
            }, childCount: 9),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
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
  AvatarsWidget(this.avatars, this.imageName, this.title);
  final List avatars;
  final String imageName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[200],
              offset: Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10),
              child: Text(
                title,
                style: kSecondaryTextStyle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: avatars.asMap().entries.map((MapEntry entry) {
                return Container(
                  width: 65,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[300],
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.grey[100],
                                offset: Offset(-4.0, -4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: getImage(
                              'images/avatars/${imageName}_${entry.key}.jpg'),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        child: Text(
                          entry.value,
                          overflow: TextOverflow.ellipsis,
                          style:
                              kSecondarySmallTextStyle.copyWith(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList()),
            ),
          ),
        ],
      ),
    );
  }
}

class CelebrityTitle extends StatelessWidget {
  final String title;

  CelebrityTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: kSecondarySmallTextStyle,
          ),
        ],
      ),
      margin: EdgeInsets.only(right: 20, left: 20, bottom: 20),
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
