
import 'package:example/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Load phrases smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    expect(find.text('GOOD_JOB', skipOffstage: false), findsWidgets);
  });
}
