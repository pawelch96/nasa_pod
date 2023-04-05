import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_pod/features/random_pod/application/cubit/random_pod_cubit.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_page_app_bar.dart';
import 'package:nasa_pod/generated/l10n.dart';

class MockRandomPodCubit extends MockCubit<RandomPodState>
    implements RandomPodCubit {}

void main() {
  late RandomPodCubit cubit;

  setUpAll(() {
    cubit = MockRandomPodCubit();
  });

  group('PodPageAppBar', () {
    testWidgets('renders app bar content', (tester) async {
      late BuildContext savedContext;

      await tester.pumpWidget(
        BlocProvider.value(
          value: cubit,
          child: MaterialApp(
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            home: Builder(builder: (context) {
              savedContext = context;
              return const Scaffold(
                appBar: PodPageAppBar(),
              );
            }),
          ),
        ),
      );

      await tester.pump();

      expect(find.text(S.of(savedContext).appName), findsOneWidget);
      expect(find.byType(IconButton), findsOneWidget);
    });

    testWidgets('action icon press calls cubit method', (tester) async {
      when(
        () => cubit.fetchRandomPod(),
      ).thenAnswer((_) async {});
      await tester.pumpWidget(
        BlocProvider.value(
          value: cubit,
          child: MaterialApp(
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            home: const Scaffold(
              appBar: PodPageAppBar(),
            ),
          ),
        ),
      );

      await tester.pump();
      final iconButton = find.byType(IconButton);
      expect(iconButton, findsOneWidget);
      await tester.tap(iconButton);
      await tester.pump();

      verify(cubit.fetchRandomPod).called(1);
    });
  });

  tearDownAll(() => cubit.close());
}
