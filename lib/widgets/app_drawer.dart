import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('My MBTI'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/main');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('MBTI List'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/mbtis');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('MBTI Match Rate'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/mbti_matching');
              },
            ),
          ],
        ),
      ),
    );
  }
}
