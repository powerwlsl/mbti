import 'package:flutter/material.dart';
import 'package:mbti/screens/user_info_screen.dart';
import 'package:mbti/screens/main_screen.dart';
import 'package:mbti/screens/mbti_list_screen.dart';
import 'package:mbti/screens/mbti_matching_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mbti/screens/mbti_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences.getInstance().then((prefs) {
    runApp(MyApp(prefs: prefs));
  });
}

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;
  MyApp({this.prefs});

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
      home: _decideHomePage(),
      routes: {
//        TODO: login page
        '/user_info': (context) => UserInfoScreen(prefs: prefs),
        '/main': (context) => MainScreen(prefs: prefs),
        '/mbtis': (context) => MbtiListScreen(),
        '/mbti_matching': (context) => MbtiMatchingScreen(prefs: prefs),
        '/mbti': (context) => MbtiScreen(null),
      },
    );
  }

  _decideHomePage() {
    if (prefs.getString('mbtiType') != null &&
        prefs.getString('gender') != null &&
        prefs.getString('age') != null) {
      return MainScreen(prefs: prefs);
    } else {
      return UserInfoScreen(prefs: prefs);
    }
  }
}
