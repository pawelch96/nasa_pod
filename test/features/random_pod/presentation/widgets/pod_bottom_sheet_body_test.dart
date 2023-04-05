import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nasa_pod/features/random_pod/data/models/pod_model.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_bottom_sheet_body.dart';

import '../../../../mocks/pod_json.dart';

void main() {
  group('PodBottomSheetBody', () {
    final Pod pod = PodModel.fromJson(podJson).map();
    testWidgets('tap on close button closes modal BottomSheet', (tester) async {
      late BuildContext savedContext;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              savedContext = context;
              return Container();
            },
          ),
        ),
      );

      await tester.pump();
      expect(find.byType(PodBottomSheetBody), findsNothing);

      bool showBottomSheetThenCalled = false;

      showModalBottomSheet<void>(
        context: savedContext,
        isScrollControlled: true,
        builder: (BuildContext context) => PodBottomSheetBody(pod: pod),
      ).then<void>((void value) {
        showBottomSheetThenCalled = true;
      });

      await tester.pumpAndSettle();
      expect(find.byType(PodBottomSheetBody), findsOneWidget);
      expect(showBottomSheetThenCalled, isFalse);

      final closeIconButton = find.byKey(const ValueKey('CloseButton'));
      await tester.tap(closeIconButton);
      await tester.pumpAndSettle();
      expect(showBottomSheetThenCalled, isTrue);
      expect(find.byType(PodBottomSheetBody), findsNothing);
    });
  });
}
