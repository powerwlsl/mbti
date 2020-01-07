import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:mbti/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  Widget TestableWidget({Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('disable save button if any of the dropdowns are not selected',
      (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({}); //set values here
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await tester.pumpWidget(TestableWidget(child: LandingScreen(prefs: prefs)));

    expect(tester.widget<FlatButton>(find.byKey(Key('saveButton'))).enabled,
        isFalse);
  });

  testWidgets('enable save button if all of the dropdowns are selected',
      (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({}); //set values here
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await tester.pumpWidget(TestableWidget(child: LandingScreen(prefs: prefs)));
    await tester.tap(find.byKey(Key('mbtiTypeDropdownButton')));
    await tester.pump(const Duration(seconds: 1));

    await tester.tap(find.byKey(Key('INFP')).first);
    await tester.pump(const Duration(seconds: 1));

    await tester.tap(find.byKey(Key('ageDropdownButton')));
    await tester.pump(const Duration(seconds: 1));
    await tester.tap(find.byKey(Key('1991')));
    await tester.pump(const Duration(seconds: 1));

    await tester.tap(find.byKey(Key('genderDropdownButton')));
    await tester.pump(const Duration(seconds: 1));
    await tester.tap(find.byKey(Key('여성')).first);
    await tester.pump(const Duration(seconds: 1));

    expect(tester.widget<FlatButton>(find.byKey(Key('saveButton'))).enabled,
        isTrue);
  });
}
