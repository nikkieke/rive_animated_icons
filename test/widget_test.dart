import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';

void main() {
  group('RiveIconExtension.getRiveAsset', () {
    test('every RiveIcon resolves to a non-empty artboard and title', () {
      for (final icon in RiveIcon.values) {
        final asset = icon.getRiveAsset();
        expect(asset.artboard, isNotEmpty, reason: 'for $icon');
        expect(asset.title, isNotEmpty, reason: 'for $icon');
        expect(asset.src, equals(Asset.iconSet), reason: 'for $icon');
      }
    });

    test('each call returns a fresh RiveAsset instance', () {
      final first = RiveIcon.home.getRiveAsset();
      final second = RiveIcon.home.getRiveAsset();
      expect(identical(first, second), isFalse);
    });
  });

  group('RiveAnimatedIcon widget', () {
    testWidgets('renders a sized placeholder before the Rive asset loads',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: Center(
              child: RiveAnimatedIcon(
                riveIcon: RiveIcon.home,
                width: 42,
                height: 24,
              ),
            ),
          ),
        ),
      );

      // Immediately after the first frame, the async Rive load hasn't
      // completed yet, so the widget should still report the requested size.
      final size = tester.getSize(find.byType(RiveAnimatedIcon));
      expect(size, const Size(42, 24));
    });

    testWidgets('invokes onTap even before the Rive asset finishes loading',
        (tester) async {
      var tapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: RiveAnimatedIcon(
                riveIcon: RiveIcon.home,
                onTap: () => tapped = true,
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.byType(RiveAnimatedIcon));
      await tester.pump(const Duration(seconds: 1));
      expect(tapped, isTrue);
    });

    testWidgets('does not invoke onTap when enableAbsorbPointer is true',
        (tester) async {
      var tapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: RiveAnimatedIcon(
                riveIcon: RiveIcon.home,
                enableAbsorbPointer: true,
                onTap: () => tapped = true,
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.byType(RiveAnimatedIcon), warnIfMissed: false);
      await tester.pump();
      expect(tapped, isFalse);
    });

    testWidgets('exposes the icon title as a semantics label by default',
        (tester) async {
      final handle = tester.ensureSemantics();

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: Center(child: RiveAnimatedIcon(riveIcon: RiveIcon.home)),
          ),
        ),
      );

      expect(find.bySemanticsLabel('Home'), findsOneWidget);
      handle.dispose();
    });

    testWidgets('semanticLabel overrides the default icon title',
        (tester) async {
      final handle = tester.ensureSemantics();

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: Center(
              child: RiveAnimatedIcon(
                riveIcon: RiveIcon.home,
                semanticLabel: 'Go to home screen',
              ),
            ),
          ),
        ),
      );

      expect(find.bySemanticsLabel('Go to home screen'), findsOneWidget);
      expect(find.bySemanticsLabel('Home'), findsNothing);
      handle.dispose();
    });

    testWidgets(
        'keeps the same RiveAsset across an unrelated ancestor rebuild ',
        (tester) async {
      final rebuildNotifier = ValueNotifier<int>(0);
      addTearDown(rebuildNotifier.dispose);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: ValueListenableBuilder<int>(
                valueListenable: rebuildNotifier,
                // Deliberately not `const`: a const widget would be
                // canonicalized to the same instance on every rebuild,
                // which would make Flutter skip rebuilding this subtree
                // entirely and defeat the point of this test.
                builder: (context, _, __) =>
                    // ignore: prefer_const_constructors
                    RiveAnimatedIcon(riveIcon: RiveIcon.home),
              ),
            ),
          ),
        ),
      );

      final before =
          tester.widget<RiveIconWidget>(find.byType(RiveIconWidget)).icon;

      // Simulate a rebuild triggered by something unrelated further up the
      // tree (not by RiveAnimatedIcon itself changing riveIcon).
      rebuildNotifier.value++;
      await tester.pump();

      final after =
          tester.widget<RiveIconWidget>(find.byType(RiveIconWidget)).icon;

      expect(identical(before, after), isTrue);
    });
  });
}
