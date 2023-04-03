import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_pod/core/domain/domain.dart';
import 'package:nasa_pod/features/random_pod/data/data_sources/helpers/pod_api_service_factory.dart';
import 'package:nasa_pod/features/random_pod/data/data_sources/pod_api_service.dart';
import 'package:nasa_pod/features/random_pod/data/models/pod_model.dart';
import 'package:nasa_pod/features/random_pod/data/repositories/pod_repository_impl.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';
import 'package:nasa_pod/features/random_pod/domain/repositories/pod_repository.dart';

import '../../../../mocks/pod_json.dart';

class MockPodApiService extends Mock implements PodApiService {}

class MockPodApiServiceFactory extends Mock implements PodApiServiceFactory {
  final PodApiService apiService;

  MockPodApiServiceFactory(this.apiService);

  @override
  PodApiService get() => apiService;
}

void main() {
  group('PodRepositoryImpl', () {
    late PodRepository sut;
    late MockPodApiService apiService;
    late MockPodApiServiceFactory factory;
    late PodModel podModel;

    setUp(() {
      apiService = MockPodApiService();
      factory = MockPodApiServiceFactory(apiService);
      sut = PodRepositoryImpl(factory);
      podModel = PodModel.fromJson(podJson);
    });

    group('getRandomPictureOfTheDay', () {
      test('calls correctly', () async {
        when(
          () => apiService.getRandomPod(),
        ).thenAnswer(
          (_) async => [podModel],
        );

        await sut.getRandomPictureOfTheDay();

        verify(
          () => apiService.getRandomPod(),
        ).called(1);
      });
      test('returns a Pod object on success', () async {
        when(
          () => apiService.getRandomPod(),
        ).thenAnswer(
          (_) async => [podModel],
        );

        final actual = await sut.getRandomPictureOfTheDay();

        actual.fold(
          (l) => expect(l, const TypeMatcher<Pod>()),
          (r) => fail(
            'test failed: $r',
          ),
        );
      });

      test('returns an AppError object on failure', () async {
        when(
          () => apiService.getRandomPod(),
        ).thenThrow(Exception());

        final actual = await sut.getRandomPictureOfTheDay();

        actual.fold(
          (l) => fail(
            'test failed: $l',
          ),
          (r) => expect(r, const TypeMatcher<AppError>()),
        );
      });
    });
  });
}
