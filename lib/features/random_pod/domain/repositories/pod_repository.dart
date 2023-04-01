
import 'package:dartz/dartz.dart';
import 'package:nasa_pod/core/domain/domain.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';

abstract class PodRepository {
  Future<Either<Pod, AppError>> getRandomPictureOfTheDay();
}
