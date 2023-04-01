import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:nasa_pod/core/domain/domain.dart';

Future<Either<T, AppError>> handleResponse<T>(
  ValueGetter<Future<DtoModel>> request,
) async {
  try {
    final DtoModel responseModel = await request();
    final entity = responseModel.map();
    return left(entity);
  } on DioError catch (e) {
    return right(_handleDioErrors(e));
  } on Exception catch (e) {
    return right(UnknownError.undefined(e.toString()));
  }
}

AppError _handleDioErrors(DioError e) {
  switch (e.type) {
    case DioErrorType.badResponse:
      final statusCode = e.response?.statusCode;
      switch (statusCode) {
        case 404:
          return const NetworkError.notFound();
        default:
          return NetworkError.response(
            e.message!,
            stackTrace: e.stackTrace,
            statusCode: statusCode,
          );
      }
    case DioErrorType.connectionTimeout:
      return const NetworkError.connectionTimeout();
    case DioErrorType.connectionError:
      return const NetworkError.noInternetConnection();
    default:
      return UnknownError.undefined(e.message!);
  }
}
