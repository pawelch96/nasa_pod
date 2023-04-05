import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_pod/core/domain/domain.dart';
import 'package:nasa_pod/features/random_pod/application/cubit/random_pod_cubit.dart';
import 'package:nasa_pod/features/random_pod/data/models/pod_model.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';
import 'package:nasa_pod/features/random_pod/domain/repositories/pod_repository.dart';
import 'package:nasa_pod/features/random_pod/domain/usecases/get_random_pod.dart';

import '../../../../mocks/pod_json.dart';

class MockPodRepository extends Mock implements PodRepository {}

class MockAppError extends Mock implements AppError {}

void main() {
  group('RandomPodCubit', () {
    late GetRandomPod usecase;
    late PodRepository repository;
    late Pod pod;

    setUp(
      () {
        repository = MockPodRepository();
        usecase = GetRandomPod(repository);
        pod = PodModel.fromJson(podJson).map();
      },
    );

    test('initial state is correct', () {
      final RandomPodCubit cubit = RandomPodCubit(usecase);
      expect(cubit.state, const RandomPodState.initial());
    });

    blocTest<RandomPodCubit, RandomPodState>(
      'emits [error] when fetchRandomPod throws Exception',
      setUp: () => when(
        () => repository.getRandomPictureOfTheDay(),
      ).thenAnswer(
        (_) async => right(
          MockAppError(),
        ),
      ),
      build: () => RandomPodCubit(usecase),
      act: (cubit) => cubit.fetchRandomPod(),
      expect: () => [
        const RandomPodState.initial(),
        const RandomPodState.error(),
      ],
    );

    blocTest<RandomPodCubit, RandomPodState>(
      'emits [podFetched] when fetchRandomPod returns Pod',
      setUp: () {
        when(() => repository.getRandomPictureOfTheDay()).thenAnswer(
          (_) async => left(
            pod,
          ),
        );
      },
      build: () => RandomPodCubit(usecase),
      act: (cubit) => cubit.fetchRandomPod(),
      expect: () => [
        const RandomPodState.initial(),
        RandomPodState.podFetched(pod),
      ],
    );
  });
}
