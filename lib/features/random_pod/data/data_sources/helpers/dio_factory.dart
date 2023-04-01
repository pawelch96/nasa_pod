import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nasa_pod/env_config/config.dart';
import 'package:nasa_pod/features/random_pod/data/data_sources/helpers/auth_interceptor.dart';
import 'package:nasa_pod/injection/injection.dart';

abstract class DioFactory {
  Dio get();
}

@Singleton(as: DioFactory)
class DioFactoryImpl extends DioFactory {
  final AuthInterceptor _authInterceptor;

  DioFactoryImpl(this._authInterceptor);

  @override
  Dio get() => _baseDio(_authInterceptor);
}

Dio _baseDio(AuthInterceptor interceptor) => Dio(
      BaseOptions(
        baseUrl: getIt.get<Config>().podUrl,
      ),
    )..interceptors.add(interceptor);
