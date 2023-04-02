import 'package:dio/dio.dart';
import 'package:nasa_pod/core/domain/domain.dart';

AppError handleDioErrors(DioError e) {
  switch (e.type) {
    case DioErrorType.badResponse:
      final statusCode = e.response?.statusCode;
      switch (statusCode) {
        case 404:
          return const NetworkError.notFound();
        default:
          return NetworkError.response(
            e.message,
            stackTrace: e.stackTrace,
            statusCode: statusCode,
          );
      }
    case DioErrorType.connectionTimeout:
      return const NetworkError.connectionTimeout();
    case DioErrorType.connectionError:
      return const NetworkError.noInternetConnection();
    default:
      return UnknownError.undefined(e.message);
  }
}
