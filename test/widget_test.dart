import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('App opens profile screen after shop', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Sport Shop'), findsOneWidget);
    await tester.tap(find.text('Create Account'));
    await tester.pumpAndSettle();

    expect(find.text('Sign Up'), findsWidgets);
    expect(find.text('Create your account'), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, 'Sign Up'));
    await tester.pumpAndSettle();

    expect(find.text('All Products'), findsOneWidget);
    expect(find.text('Pro Soccer Ball'), findsOneWidget);

    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();

    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Edit Profile'), findsOneWidget);
  });
}
