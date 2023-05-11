import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ds1/ds1.dart';
import '../app.dart';

void main() {
  testWidgets('Check snackbar', (WidgetTester tester) async {
    await tester.pumpWidget(App(
      children: [
        Builder(builder: (context) {
          return DS1Button(
            label: 'Open Dialog',
            onTap: () {
              DS1SnackBar.show(message: 'snackbar message', context: context);
            },
          );
        })
      ],
    ));

    await tester.tap(find.text('Open Dialog'));
    await tester.pumpAndSettle();

    expect(find.text('snackbar message'), findsOneWidget);
  });
}
