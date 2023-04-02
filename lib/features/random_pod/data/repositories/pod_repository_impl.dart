import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nasa_pod/core/data/data.dart';
import 'package:nasa_pod/core/domain/domain.dart';
import 'package:nasa_pod/features/random_pod/data/data_sources/helpers/pod_api_service_factory.dart';
import 'package:nasa_pod/features/random_pod/data/data_sources/pod_api_service.dart';
import 'package:nasa_pod/features/random_pod/data/models/pod_model.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';
import 'package:nasa_pod/features/random_pod/domain/repositories/pod_repository.dart';

@LazySingleton(as: PodRepository)
class PodRepositoryImpl implements PodRepository {
  final PodApiService _apiService;

  PodRepositoryImpl(PodApiServiceFactory factory) : _apiService = factory.get();

  @override
  Future<Either<Pod, AppError>> getRandomPictureOfTheDay() async {
    try {
      final List<PodModel> result = await _apiService.getRandomPod();
      final List<Pod> podList = result
          .map(
            (e) => e.map(),
          )
          .toList();
      return left(podList.first);
    } on DioError catch (e) {
      return right(handleDioErrors(e));
    } on Exception catch (e) {
      return right(UnknownError.undefined(e.toString()));
    }
  }
}
