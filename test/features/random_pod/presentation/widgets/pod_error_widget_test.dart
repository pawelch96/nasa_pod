import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_error_widget.dart';
import 'package:nasa_pod/generated/l10n.dart';

void main() {
  group('PodErrorWidget', () {
    testWidgets('renders error text', (tester) async {
      late BuildContext savedContext;
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          home: Builder(
            builder: (BuildContext context) {
              savedContext = context;
              return const PodErrorWidget();
            },
          ),
        ),
      );
      await tester.pump();

      expect(find.text(S.of(savedContext).fetchingError), findsOneWidget);
    });
  });
}
