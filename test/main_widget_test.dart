import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mbti/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('if gender, age, mbti is not saved in shared preference',
      (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({}); //set values here
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await tester.pumpWidget(MyApp(prefs: prefs));
    expect(find.byKey(Key('mbtiTypeDropdownButton')), findsNWidgets(2));
    expect(find.byKey(Key('genderDropdownButton')), findsNWidgets(2));
    expect(find.byKey(Key('ageDropdownButton')), findsNWidgets(2));
  });

  testWidgets('if gender, age, mbti is saved in shared preference',
      (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues(<String, String>{
      'gender': 'MALE',
      'mbtiType': 'INFP',
      'age': '1991',
    }); //set values here
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await tester.pumpWidget(MyApp(prefs: prefs));
    expect(find.byKey(Key('mainScreenPage')), findsOneWidget);
    expect(find.byKey(Key('mbtiTypeDropdownButton')), findsNothing);
    expect(find.byKey(Key('genderDropdownButton')), findsNothing);
    expect(find.byKey(Key('ageDropdownButton')), findsNothing);
  });
}
