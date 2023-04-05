import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nasa_pod/features/random_pod/data/models/pod_model.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_body_widget.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_bottom_sheet_body.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_image.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../../../mocks/pod_json.dart';

void main() {
  final Pod pod = PodModel.fromJson(podJson).map();

  group('PodBodyWidget', () {
    testWidgets('renders children', (tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          MaterialApp(
            home: Material(
              child: PodBodyWidget(pod),
            ),
          ),
        ),
      );

      expect(find.byType(PodImage), findsOneWidget);
      expect(find.byType(IconButton), findsOneWidget);
    });

    testWidgets('shows ModalBottomSheet on button press', (tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          MaterialApp(
            home: Material(
              child: PodBodyWidget(pod),
            ),
          ),
        ),
      );

      final iconButton = find.byType(IconButton);
      expect(iconButton, findsOneWidget);
      await tester.tap(iconButton);
      await tester.pump();
      expect(find.byType(PodBottomSheetBody), findsOneWidget);
    });

    testWidgets('renders ModalBottomSheet', (tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          MaterialApp(
            home: Material(
              child: PodBodyWidget(pod),
            ),
          ),
        ),
      );

      final iconButton = find.byType(IconButton);
      expect(iconButton, findsOneWidget);
      await tester.tap(iconButton);
      await tester.pump();
      expect(find.byType(PodBottomSheetBody), findsOneWidget);
      expect(find.text(pod.author!), findsOneWidget);
      expect(find.text(pod.date), findsOneWidget);
      expect(find.text(pod.description), findsOneWidget);
    });
  });
}
