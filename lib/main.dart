import 'package:shared_preferences/shared_preferences.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:mbti/screens/main_screen.dart';
import 'package:mbti/screens/mbti_list_screen.dart';
import 'package:mbti/screens/mbti_matching_screen.dart';
import 'package:mbti/screens/user_info_screen.dart';
import 'package:mbti/screens/landing_screen.dart';
import 'package:flutter/services.dart';

// TODO safearea bottom for iphone x
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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MBTI',
        theme: ThemeData(
          primaryColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          fontFamily: 'NanumSquareRound',
          buttonTheme: ButtonThemeData(
            textTheme: ButtonTextTheme.accent,
            colorScheme: Theme.of(context)
                .colorScheme
                .copyWith(secondary: Colors.white), // Text color
          ),
        ),
        home: _decideHomePage(),
        routes: {
          '/home': (context) => MyHomePage(prefs: prefs),
        });
  }

  _decideHomePage() {
    if (prefs.getString('mbtiType') != null &&
        prefs.getString('gender') != null &&
        prefs.getString('age') != null) {
      return MyHomePage(prefs: prefs);
    } else {
      return LandingScreen(prefs: prefs);
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
        backgroundColor: Color(0xfffafafa),
        title: Text(
          _getTitle(currentPage),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: _getPage(currentPage),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Color(0xff7abae9),
        inactiveIconColor: Color(0xffbcdcf4),
        tabs: [
          TabData(
            iconData: Icons.home,
            title: "나의 MBTI",
          ),
          TabData(
            iconData: Icons.apps,
            title: "MBTI 유형",
          ),
          TabData(
            iconData: Icons.pie_chart,
            title: "MBTI 궁합",
          ),
          TabData(
            iconData: Icons.settings,
            title: "설정",
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
        return MainScreen(prefs.getString('mbtiType'));
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
        return "나의 MBTI";
      case 1:
        return "MBTI 성격유형";
      case 2:
        return "MBTI 궁합";
      default:
        return "설정";
    }
  }
}
