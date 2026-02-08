import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:roll_dice_app/main.dart'; // replace with your actual app package name
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  testWidgets('GradientContainer renders correctly', (
    WidgetTester tester,
  ) async {
    // Build the app
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: GradientContainer([
            Color.fromARGB(255, 197, 7, 83),
            Color.fromARGB(255, 255, 101, 153),
            Color.fromARGB(255, 241, 186, 205),
          ]),
        ),
      ),
    );

    // Verify GradientContainer exists
    expect(find.byType(GradientContainer), findsOneWidget);

    // Optionally, check that the colors are present in the widget tree
    // This is trickier; usually you might test properties of GradientContainer if exposed
  });
}
