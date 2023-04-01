import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nasa_pod/core/data/data.dart';
import 'package:nasa_pod/core/domain/entities/app_error.dart';
import 'package:nasa_pod/features/random_pod/data/data_sources/helpers/pod_api_service_factory.dart';
import 'package:nasa_pod/features/random_pod/data/data_sources/pod_api_service.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';
import 'package:nasa_pod/features/random_pod/domain/repositories/pod_repository.dart';

@LazySingleton(as: PodRepository)
class PodRepositoryImpl implements PodRepository {
  final PodApiService _apiService;

  PodRepositoryImpl(PodApiServiceFactory factory) : _apiService = factory.get();

  @override
  Future<Either<Pod, AppError>> getRandomPictureOfTheDay() async =>
      handleResponse(
        () => _apiService.getRandomPod(),
      );
}
