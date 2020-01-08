import 'package:mbti/models/mbtis.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('all mbti combination returns matching rate',
      (WidgetTester tester) async {
    Mbtis.Types.keys.forEach((mbti_1) {
      Mbtis.Types.keys.forEach((mbti_2) {
        String result1 = Mbtis.getResult(mbti_1, mbti_2);
        String result2 = Mbtis.getResult(mbti_2, mbti_1);

        expect(result1, isNotNull);
        expect(result2, isNotNull);
        expect(result1, result2);
      });
    });
  });
}
