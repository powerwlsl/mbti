import 'package:flutter/material.dart';
import 'package:mbti/screens/user_info_screen.dart';
import 'package:mbti/screens/main_screen.dart';
import 'package:mbti/screens/mbti_list_screen.dart';
import 'package:mbti/screens/mbti_matching_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryIconTheme: IconThemeData.fallback().copyWith(
          color: Colors.white,
        ),
      ),
      routes: {
//        TODO: login page
        '/': (context) => UserInfoScreen(),
        '/main': (context) => MainScreen(),
        '/mbtis': (context) => MbtiListScreen(),
        '/mbti_matching': (context) => MbtiMatchingScreen(),
      },
    );
  }
}
