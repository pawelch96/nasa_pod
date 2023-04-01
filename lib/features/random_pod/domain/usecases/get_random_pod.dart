import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nasa_pod/core/domain/domain.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';
import 'package:nasa_pod/features/random_pod/domain/repositories/nasa_pod_repository.dart';

@LazySingleton()
class GetRandomPod with UseCase<Pod, NoParams> {
  final PodRepository _repository;

  GetRandomPod(this._repository);

  @override
  Future<Either<Pod, AppError>> call(NoParams params) async =>
      await _repository.getRandomPictureOfTheDay();
}
