import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_pod/core/domain/domain.dart';
import 'package:nasa_pod/core/presentation/presentation.dart';
import 'package:nasa_pod/features/random_pod/application/cubit/random_pod_cubit.dart';
import 'package:nasa_pod/features/random_pod/data/models/pod_model.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';
import 'package:nasa_pod/features/random_pod/domain/repositories/pod_repository.dart';
import 'package:nasa_pod/features/random_pod/domain/usecases/get_random_pod.dart';
import 'package:nasa_pod/features/random_pod/presentation/pages/random_pod_page.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_body_widget.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_error_widget.dart';
import 'package:nasa_pod/generated/l10n.dart';

import '../../../../mocks/pod_json.dart';

class MockRandomPodCubit extends MockCubit<RandomPodState>
    implements RandomPodCubit {}

class MockPodRepository extends Mock implements PodRepository {}

class MockGetRandomPod extends Mock implements GetRandomPod {}

void main() {
  late PodRepository repository;
  late GetRandomPod usecase;
  late RandomPodCubit cubit;
  final di = GetIt.instance;
  final params = NoParams();

  setUpAll(() {
    repository = MockPodRepository();
    usecase = MockGetRandomPod();
    cubit = MockRandomPodCubit();

    di.registerLazySingleton<PodRepository>(() => repository);
    di.registerLazySingleton<GetRandomPod>(() => usecase);

    registerFallbackValue(params);
  });
  group('RandomPodPage', () {
    testWidgets('renders RandomPodPageContent', (tester) async {
      when(
        () => usecase.call(any()),
      ).thenAnswer(
        (_) async => left(
          PodModel.fromJson(podJson).map(),
        ),
      );
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          theme: AppTheme.data,
          home: const RandomPodPage(),
        ),
      );
      await tester.pump();
      expect(
        find.byType(RandomPodPageContent, skipOffstage: false),
        findsOneWidget,
      );
    });

    testWidgets('renders AppProgressIndicator for RandomPodState.initial',
        (tester) async {
      when(() => cubit.state).thenReturn(const RandomPodState.initial());

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
            theme: AppTheme.data,
            home: const RandomPodPageContent(),
          ),
        ),
      );
      await tester.pump();
      expect(
        find.byType(AppProgressIndicator, skipOffstage: false),
        findsOneWidget,
      );
    });

    testWidgets('renders PodErrorWidget for RandomPodState.error',
        (tester) async {
      when(() => cubit.state).thenReturn(const RandomPodState.error());

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
            theme: AppTheme.data,
            home: const RandomPodPageContent(),
          ),
        ),
      );
      await tester.pump();
      expect(
        find.byType(PodErrorWidget, skipOffstage: false),
        findsOneWidget,
      );
    });

    testWidgets('renders PodBodyWidget for RandomPodState.podFetched',
        (tester) async {
      final Pod pod = PodModel.fromJson(podJson).map();
      when(
        () => usecase.call(any()),
      ).thenAnswer(
        (_) async => left(
          pod,
        ),
      );
      when(() => cubit.state).thenReturn(RandomPodState.podFetched(pod));

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
            theme: AppTheme.data,
            home: const RandomPodPageContent(),
          ),
        ),
      );
      await tester.pump();
      expect(
        find.byType(PodBodyWidget, skipOffstage: false),
        findsOneWidget,
      );
    });
  });

  tearDownAll(() {
    cubit.close();
    di.reset();
  });
}
