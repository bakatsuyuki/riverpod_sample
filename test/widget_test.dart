// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_sample/pages/counter_page/counter_page.dart';

import 'helper.dart';

void main() {
  testWidgets('CounterPage', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: TestApp(home: CounterPage())),
    );
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
    for (var i = 0; i < 5; i++) {
      await tester.tap(find.byIcon(Icons.add));
    }
    await tester.pump();
    expect(find.text('1'), findsNothing);
    expect(find.text('6'), findsOneWidget);
  });
}
