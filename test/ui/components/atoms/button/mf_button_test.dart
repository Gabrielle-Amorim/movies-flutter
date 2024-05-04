import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_flutter/ui/components/atoms/atoms.dart';
import 'package:movies_flutter/ui/theme/colors.dart';

import '../../../../mocks/mock_class.mocks.dart';

void main() {
  group('MfButton', () {
    group('passing only the required parameters', () {
      testWidgets('MfButton should be defined', (tester) async {
        Key buttonKey = const Key('testing-button');
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: MfButton(
                key: buttonKey,
                label: "testing",
                onTap: () {},
              ),
            ),
          ),
        );

        final button = find.byKey(buttonKey);

        expect(button, findsOneWidget);
      });

      testWidgets('MfButton should call onTap successfully', (tester) async {
        MockSomeClassWithFunction mockFunction = MockSomeClassWithFunction();

        Key key = const Key('testing-button');
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: MfButton(
                key: key,
                label: "testing",
                onTap: mockFunction.call,
              ),
            ),
          ),
        );

        await tester.tap(find.byKey(Key('InkWell01-$key')));
        verify(mockFunction.call()).called(1);
      });
    });

    group('passing all parameters', () {
      testWidgets('should has background white and width 257', (tester) async {
        Key buttonKey = const Key('testing-button');
        Color color = MFColors.ligthPurple;
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: MfButton(
                label: "testing",
                width: 1000,
                key: buttonKey,
                backgroundColor: color,
                onTap: () {},
              ),
            ),
          ),
        );

        final finder = find.byType(Container);
        Container container = tester.widget(finder) as Container;

        expect(finder, findsOneWidget);
        expect((container.decoration as BoxDecoration).color,
            MFColors.ligthPurple);
        expect((container.constraints as BoxConstraints).minWidth, 1000);
        expect((container.constraints as BoxConstraints).maxWidth, 1000);
      });

      testWidgets('MfButton should call onTap successfully', (tester) async {
        MockSomeClassWithFunction mockFunction = MockSomeClassWithFunction();

        Key key = const Key('testing-button');
        Color color = Colors.white;
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: MfButton(
                label: "testing",
                width: 1000,
                key: key,
                backgroundColor: color,
                onTap: mockFunction.call,
              ),
            ),
          ),
        );

        await tester.tap(find.byKey(Key('InkWell01-$key')));
        verify(mockFunction.call()).called(1);
      });
    });
  });
}
