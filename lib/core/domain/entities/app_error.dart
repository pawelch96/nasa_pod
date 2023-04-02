import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

abstract class AppError {
  const AppError();
}

@freezed
class UnknownError extends AppError with _$UnknownError {
  const factory UnknownError.undefined(String? message) = UndefinedError;

  const UnknownError._();
}

@freezed
class NetworkError extends AppError with _$NetworkError {
  const factory NetworkError.noInternetConnection() = NoInternetConnection;
  const factory NetworkError.connectionTimeout() = ConnectionTimeout;
  const factory NetworkError.notFound() = NotFound;
  const factory NetworkError.response(
    String? message, {
    StackTrace? stackTrace,
    int? statusCode,
  }) = ResponseError;

  const NetworkError._();
}
