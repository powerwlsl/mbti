import 'package:flutter_test/flutter_test.dart';
import 'package:mbti/screens/mbti_matching_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  Widget TestableWidget({Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets(
      'disable see result button if any of the dropdowns are not selected',
      (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({}); //set values here
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await tester
        .pumpWidget(TestableWidget(child: MbtiMatchingScreen(prefs: prefs)));

    expect(
        tester.widget<FlatButton>(find.byKey(Key('seeResultButton'))).enabled,
        isFalse);
  });

  testWidgets('enable see result button if all of the dropdowns are selected',
      (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({}); //set values here
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await tester
        .pumpWidget(TestableWidget(child: MbtiMatchingScreen(prefs: prefs)));
    await tester.tap(find.byKey(Key('mbti_1')));
    await tester.pump(const Duration(seconds: 1));

    await tester.tap(find.byKey(Key('INFP')).first);
    await tester.pump(const Duration(seconds: 1));

    await tester.tap(find.byKey(Key('mbti_2')));
    await tester.pump(const Duration(seconds: 1));

    await tester.tap(find.byKey(Key('INFP')).first);
    await tester.pump(const Duration(seconds: 1));

    expect(
        tester.widget<FlatButton>(find.byKey(Key('seeResultButton'))).enabled,
        isTrue);
  });

  testWidgets('show image when see result button is clicked',
      (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({}); //set values here
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await tester
        .pumpWidget(TestableWidget(child: MbtiMatchingScreen(prefs: prefs)));
    await tester.tap(find.byKey(Key('mbti_1')));
    await tester.pump(const Duration(seconds: 1));

    await tester.tap(find.byKey(Key('INFP')).first);
    await tester.pump(const Duration(seconds: 1));

    await tester.tap(find.byKey(Key('mbti_2')));
    await tester.pump(const Duration(seconds: 1));

    await tester.tap(find.byKey(Key('INFP')).first);
    await tester.pump(const Duration(seconds: 1));

    await tester.tap(find.byKey(Key('seeResultButton')));
    await tester.pump(const Duration(seconds: 4));

    expect(find.byKey(Key('result')), findsOneWidget);
  });
}
