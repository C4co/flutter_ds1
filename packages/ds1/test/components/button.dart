import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ds1/ds1.dart';
import '../app.dart';

testButton() {
  testWidgets('Check solid style', (WidgetTester tester) async {
    await tester.pumpWidget(const App(
      children: [
        DS1Button(
          label: 'Solid button',
          type: DS1ButtonType.solid,
        ),
      ],
    ));

    expect(find.text('Solid button'), findsOneWidget);
  });

  testWidgets('Check outline style', (WidgetTester tester) async {
    await tester.pumpWidget(const App(
      children: [
        DS1Button(
          label: 'Outline button',
          type: DS1ButtonType.outline,
        ),
      ],
    ));

    expect(find.text('Outline button'), findsOneWidget);
  });

  testWidgets('Check button event', (WidgetTester tester) async {
    var isTap = false;

    await tester.pumpWidget(App(
      children: [
        DS1Button(
          label: 'Button',
          onTap: () {
            isTap = true;
          },
        ),
      ],
    ));

    await tester.tap(find.text('Button'));
    expect(isTap, true);
  });

  testWidgets('Check button loading state', (WidgetTester tester) async {
    await tester.pumpWidget(const App(
      children: [
        DS1Button(
          label: 'Button',
          isLoading: true,
        ),
      ],
    ));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('Check button with icon', (WidgetTester tester) async {
    await tester.pumpWidget(const App(
      children: [
        DS1Button(
          label: 'Button',
          icon: Icons.add,
        ),
      ],
    ));

    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
