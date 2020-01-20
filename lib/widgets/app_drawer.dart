import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.star),
              title: Text('리뷰 작성하여 MBTI 응원하기'),
              subtitle: Text('회원님의 소중한 리뷰는 힘이 됩니다'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/main');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('문의 및 제안하기'),
              subtitle: Text('좋은 앱을 함께 만들어요'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/mbtis');
              },
            ),
          ],
        ),
      ),
    );
  }
}
