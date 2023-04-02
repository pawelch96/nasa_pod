import 'package:dio/dio.dart';
import 'package:nasa_pod/features/random_pod/data/models/pod_model.dart';
import 'package:retrofit/http.dart';

part 'pod_api_service.g.dart';

@RestApi()
abstract class PodApiService {
  factory PodApiService(Dio dio) = _PodApiService;

  @GET('planetary/apod?count=1&thumbs=true')
  Future<List<PodModel>> getRandomPod();
}
