import 'package:mbti/models/mbtis.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('all mbti combination returns matching rate',
      (WidgetTester tester) async {
    Mbtis.Types.keys.forEach((mbti_1) {
      Mbtis.Types.keys.forEach((mbti_2) {
        String result = Mbtis.getResult(mbti_1, mbti_2);
        print('$mbti_1 $mbti_2');
        expect(result, isNotNull);
      });
    });
  });
}
