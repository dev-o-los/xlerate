import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_sizer/simple_sizer.dart';

void main() {
  testWidgets('Text Widget Test', (WidgetTester tester) async {
    // Define a test widget
    final testWidget = MaterialApp(
      home: Scaffold(
        body: const Text('Hello, World!').semibold(),
      ),
    );

    // Build and trigger the test widget
    await tester.pumpWidget(testWidget);

    // Verify if the Text widget displays the correct text
    expect(find.text('Hello, World!'), findsOneWidget);
  });
}
