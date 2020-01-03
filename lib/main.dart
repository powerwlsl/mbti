import 'package:shared_preferences/shared_preferences.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:mbti/screens/main_screen.dart';
import 'package:mbti/screens/mbti_list_screen.dart';
import 'package:mbti/screens/mbti_matching_screen.dart';
import 'package:mbti/screens/user_info_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences.getInstance().then((prefs) {
    runApp(MyApp(prefs: prefs));
  });
}

class MyApp extends StatelessWidget {
  @override
  final SharedPreferences prefs;
  MyApp({this.prefs});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      home: _decideHomePage(),
    );
  }

  _decideHomePage() {
    if (prefs.getString('mbtiType') != null &&
        prefs.getString('gender') != null &&
        prefs.getString('age') != null) {
      return MyHomePage(prefs: prefs);
    } else {
      return UserInfoScreen(prefs: prefs);
    }
  }
}

class MyHomePage extends StatefulWidget {
  final SharedPreferences prefs;
  MyHomePage({this.prefs});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();
  SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    prefs = widget.prefs;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _getTitle(currentPage),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.cyan,
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
            iconData: Icons.home,
            title: "Home",
          ),
          TabData(
            iconData: Icons.apps,
            title: "Mbti List",
          ),
          TabData(
            iconData: Icons.pie_chart,
            title: "Matching",
          ),
          TabData(
            iconData: Icons.settings,
            title: "Settings",
          ),
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return MainScreen(prefs: prefs);
      case 1:
        return MbtiListScreen();
      case 2:
        return MbtiMatchingScreen(prefs: prefs);
      default:
        return UserInfoScreen(prefs: prefs);
    }
  }

  _getTitle(int page) {
    switch (page) {
      case 0:
        return "My Mbti";
      case 1:
        return "Mbti List";
      case 2:
        return "Mbti Match";
      default:
        return "Settings";
    }
  }
}
