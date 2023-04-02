import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nasa_pod/features/random_pod/data/constants/api_key.dart';

@injectable
class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({'api_key': API_KEY});

    handler.next(options);
  }
}
