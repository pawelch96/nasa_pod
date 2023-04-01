import 'package:injectable/injectable.dart';
import 'package:nasa_pod/features/random_pod/data/data_sources/helpers/dio_factory.dart';
import 'package:nasa_pod/features/random_pod/data/data_sources/pod_api_service.dart';

@injectable
class PodApiServiceFactory {
  final DioFactory _dioFactory;

  PodApiServiceFactory(this._dioFactory);

  PodApiService get() => PodApiService(
        _dioFactory.get(),
      );
}
