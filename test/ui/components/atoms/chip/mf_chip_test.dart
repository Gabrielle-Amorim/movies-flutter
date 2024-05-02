import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_flutter/ui/components/atoms/atoms.dart';

import '../../../../mocks/mock_class.mocks.dart';

void main() {
  group('MfChip', () {
    testWidgets('MfChip.selected should be defined', (tester) async {
      Key key = const Key('testing-chip');
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MfChip.selected(
              key: key,
              label: "testing",
              onTap: () {},
            ),
          ),
        ),
      );

      final chip = find.byKey(key);

      expect(chip, findsOneWidget);
      expect(find.text('testing'), findsOneWidget);
    });

    testWidgets('MfChip.selected should call onTap successfully',
        (tester) async {
      MockSomeClassWithFunction mockFunction = MockSomeClassWithFunction();

      Key key = const Key('testing-chip');
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MfChip.selected(
              key: key,
              label: "testing",
              onTap: mockFunction.call,
            ),
          ),
        ),
      );

      await tester.tap(find.byKey(Key('GestureDetector01-$key')));
      verify(mockFunction.call()).called(1);
    });

    testWidgets('MfChip.unselected should be defined', (tester) async {
      Key key = const Key('testing-chip');
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MfChip.unselected(
              key: key,
              label: "testing",
              onTap: () {},
            ),
          ),
        ),
      );

      final chip = find.byKey(key);

      expect(chip, findsOneWidget);
      expect(find.text('testing'), findsOneWidget);
    });

    testWidgets('MfChip.unselected should call onTap successfully',
        (tester) async {
      MockSomeClassWithFunction mockFunction = MockSomeClassWithFunction();

      Key key = const Key('testing-chip');
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MfChip.unselected(
              key: key,
              label: "testing",
              onTap: mockFunction.call,
            ),
          ),
        ),
      );

      await tester.tap(find.byKey(Key('GestureDetector01-$key')));
      verify(mockFunction.call()).called(1);
    });
  });
}
