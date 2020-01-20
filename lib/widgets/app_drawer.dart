import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {
  _launchURL() async {
    String uri =
        'mailto:hyejinahn0619@gmail.com?subject=${Uri.encodeComponent("MBTI 문의 및 제안하기")}';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw '$uri 오픈 실패';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                'images/review.png',
                width: 40,
              ),
              title: Text('리뷰 작성하여 MBTI 응원하기'),
              subtitle: Text('회원님의 소중한 리뷰는 힘이 됩니다'),
              onTap: () {
                LaunchReview.launch(
                    androidAppId: "com.hyejinahn.mbti", iOSAppId: "1494694210");
              },
            ),
            Divider(),
            ListTile(
              leading: Image.asset(
                'images/email.png',
                width: 35,
              ),
              title: Text('문의 및 제안하기'),
              subtitle: Text('좋은 앱을 함께 만들어나가요'),
              onTap: () {
                _launchURL();
              },
            ),
          ],
        ),
      ),
    );
  }
}
