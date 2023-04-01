// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UnknownError {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) undefined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? undefined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? undefined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UndefinedError value) undefined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UndefinedError value)? undefined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndefinedError value)? undefined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnknownErrorCopyWith<UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnknownErrorCopyWith<$Res> {
  factory $UnknownErrorCopyWith(
          UnknownError value, $Res Function(UnknownError) then) =
      _$UnknownErrorCopyWithImpl<$Res, UnknownError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$UnknownErrorCopyWithImpl<$Res, $Val extends UnknownError>
    implements $UnknownErrorCopyWith<$Res> {
  _$UnknownErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UndefinedErrorCopyWith<$Res>
    implements $UnknownErrorCopyWith<$Res> {
  factory _$$UndefinedErrorCopyWith(
          _$UndefinedError value, $Res Function(_$UndefinedError) then) =
      __$$UndefinedErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UndefinedErrorCopyWithImpl<$Res>
    extends _$UnknownErrorCopyWithImpl<$Res, _$UndefinedError>
    implements _$$UndefinedErrorCopyWith<$Res> {
  __$$UndefinedErrorCopyWithImpl(
      _$UndefinedError _value, $Res Function(_$UndefinedError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UndefinedError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UndefinedError extends UndefinedError {
  const _$UndefinedError(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'UnknownError.undefined(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UndefinedError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UndefinedErrorCopyWith<_$UndefinedError> get copyWith =>
      __$$UndefinedErrorCopyWithImpl<_$UndefinedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) undefined,
  }) {
    return undefined(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? undefined,
  }) {
    return undefined?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? undefined,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UndefinedError value) undefined,
  }) {
    return undefined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UndefinedError value)? undefined,
  }) {
    return undefined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndefinedError value)? undefined,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined(this);
    }
    return orElse();
  }
}

abstract class UndefinedError extends UnknownError {
  const factory UndefinedError(final String message) = _$UndefinedError;
  const UndefinedError._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UndefinedErrorCopyWith<_$UndefinedError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NetworkError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() connectionTimeout,
    required TResult Function() notFound,
    required TResult Function(
            String message, StackTrace? stackTrace, int? statusCode)
        response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function()? connectionTimeout,
    TResult? Function()? notFound,
    TResult? Function(String message, StackTrace? stackTrace, int? statusCode)?
        response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? connectionTimeout,
    TResult Function()? notFound,
    TResult Function(String message, StackTrace? stackTrace, int? statusCode)?
        response,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(ConnectionTimeout value) connectionTimeout,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ResponseError value) response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(ConnectionTimeout value)? connectionTimeout,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ResponseError value)? response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(ConnectionTimeout value)? connectionTimeout,
    TResult Function(NotFound value)? notFound,
    TResult Function(ResponseError value)? response,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkErrorCopyWith<$Res> {
  factory $NetworkErrorCopyWith(
          NetworkError value, $Res Function(NetworkError) then) =
      _$NetworkErrorCopyWithImpl<$Res, NetworkError>;
}

/// @nodoc
class _$NetworkErrorCopyWithImpl<$Res, $Val extends NetworkError>
    implements $NetworkErrorCopyWith<$Res> {
  _$NetworkErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoInternetConnectionCopyWith<$Res> {
  factory _$$NoInternetConnectionCopyWith(_$NoInternetConnection value,
          $Res Function(_$NoInternetConnection) then) =
      __$$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetConnectionCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res, _$NoInternetConnection>
    implements _$$NoInternetConnectionCopyWith<$Res> {
  __$$NoInternetConnectionCopyWithImpl(_$NoInternetConnection _value,
      $Res Function(_$NoInternetConnection) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetConnection extends NoInternetConnection {
  const _$NoInternetConnection() : super._();

  @override
  String toString() {
    return 'NetworkError.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() connectionTimeout,
    required TResult Function() notFound,
    required TResult Function(
            String message, StackTrace? stackTrace, int? statusCode)
        response,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function()? connectionTimeout,
    TResult? Function()? notFound,
    TResult? Function(String message, StackTrace? stackTrace, int? statusCode)?
        response,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? connectionTimeout,
    TResult Function()? notFound,
    TResult Function(String message, StackTrace? stackTrace, int? statusCode)?
        response,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(ConnectionTimeout value) connectionTimeout,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ResponseError value) response,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(ConnectionTimeout value)? connectionTimeout,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ResponseError value)? response,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(ConnectionTimeout value)? connectionTimeout,
    TResult Function(NotFound value)? notFound,
    TResult Function(ResponseError value)? response,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection extends NetworkError {
  const factory NoInternetConnection() = _$NoInternetConnection;
  const NoInternetConnection._() : super._();
}

/// @nodoc
abstract class _$$ConnectionTimeoutCopyWith<$Res> {
  factory _$$ConnectionTimeoutCopyWith(
          _$ConnectionTimeout value, $Res Function(_$ConnectionTimeout) then) =
      __$$ConnectionTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionTimeoutCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res, _$ConnectionTimeout>
    implements _$$ConnectionTimeoutCopyWith<$Res> {
  __$$ConnectionTimeoutCopyWithImpl(
      _$ConnectionTimeout _value, $Res Function(_$ConnectionTimeout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectionTimeout extends ConnectionTimeout {
  const _$ConnectionTimeout() : super._();

  @override
  String toString() {
    return 'NetworkError.connectionTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectionTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() connectionTimeout,
    required TResult Function() notFound,
    required TResult Function(
            String message, StackTrace? stackTrace, int? statusCode)
        response,
  }) {
    return connectionTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function()? connectionTimeout,
    TResult? Function()? notFound,
    TResult? Function(String message, StackTrace? stackTrace, int? statusCode)?
        response,
  }) {
    return connectionTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? connectionTimeout,
    TResult Function()? notFound,
    TResult Function(String message, StackTrace? stackTrace, int? statusCode)?
        response,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(ConnectionTimeout value) connectionTimeout,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ResponseError value) response,
  }) {
    return connectionTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(ConnectionTimeout value)? connectionTimeout,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ResponseError value)? response,
  }) {
    return connectionTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(ConnectionTimeout value)? connectionTimeout,
    TResult Function(NotFound value)? notFound,
    TResult Function(ResponseError value)? response,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(this);
    }
    return orElse();
  }
}

abstract class ConnectionTimeout extends NetworkError {
  const factory ConnectionTimeout() = _$ConnectionTimeout;
  const ConnectionTimeout._() : super._();
}

/// @nodoc
abstract class _$$NotFoundCopyWith<$Res> {
  factory _$$NotFoundCopyWith(
          _$NotFound value, $Res Function(_$NotFound) then) =
      __$$NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res, _$NotFound>
    implements _$$NotFoundCopyWith<$Res> {
  __$$NotFoundCopyWithImpl(_$NotFound _value, $Res Function(_$NotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFound extends NotFound {
  const _$NotFound() : super._();

  @override
  String toString() {
    return 'NetworkError.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() connectionTimeout,
    required TResult Function() notFound,
    required TResult Function(
            String message, StackTrace? stackTrace, int? statusCode)
        response,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function()? connectionTimeout,
    TResult? Function()? notFound,
    TResult? Function(String message, StackTrace? stackTrace, int? statusCode)?
        response,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? connectionTimeout,
    TResult Function()? notFound,
    TResult Function(String message, StackTrace? stackTrace, int? statusCode)?
        response,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(ConnectionTimeout value) connectionTimeout,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ResponseError value) response,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(ConnectionTimeout value)? connectionTimeout,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ResponseError value)? response,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(ConnectionTimeout value)? connectionTimeout,
    TResult Function(NotFound value)? notFound,
    TResult Function(ResponseError value)? response,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound extends NetworkError {
  const factory NotFound() = _$NotFound;
  const NotFound._() : super._();
}

/// @nodoc
abstract class _$$ResponseErrorCopyWith<$Res> {
  factory _$$ResponseErrorCopyWith(
          _$ResponseError value, $Res Function(_$ResponseError) then) =
      __$$ResponseErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, StackTrace? stackTrace, int? statusCode});
}

/// @nodoc
class __$$ResponseErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res, _$ResponseError>
    implements _$$ResponseErrorCopyWith<$Res> {
  __$$ResponseErrorCopyWithImpl(
      _$ResponseError _value, $Res Function(_$ResponseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$ResponseError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ResponseError extends ResponseError {
  const _$ResponseError(this.message, {this.stackTrace, this.statusCode})
      : super._();

  @override
  final String message;
  @override
  final StackTrace? stackTrace;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'NetworkError.response(message: $message, stackTrace: $stackTrace, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseErrorCopyWith<_$ResponseError> get copyWith =>
      __$$ResponseErrorCopyWithImpl<_$ResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() connectionTimeout,
    required TResult Function() notFound,
    required TResult Function(
            String message, StackTrace? stackTrace, int? statusCode)
        response,
  }) {
    return response(message, stackTrace, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternetConnection,
    TResult? Function()? connectionTimeout,
    TResult? Function()? notFound,
    TResult? Function(String message, StackTrace? stackTrace, int? statusCode)?
        response,
  }) {
    return response?.call(message, stackTrace, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? connectionTimeout,
    TResult Function()? notFound,
    TResult Function(String message, StackTrace? stackTrace, int? statusCode)?
        response,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(message, stackTrace, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(ConnectionTimeout value) connectionTimeout,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ResponseError value) response,
  }) {
    return response(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(ConnectionTimeout value)? connectionTimeout,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ResponseError value)? response,
  }) {
    return response?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(ConnectionTimeout value)? connectionTimeout,
    TResult Function(NotFound value)? notFound,
    TResult Function(ResponseError value)? response,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(this);
    }
    return orElse();
  }
}

abstract class ResponseError extends NetworkError {
  const factory ResponseError(final String message,
      {final StackTrace? stackTrace, final int? statusCode}) = _$ResponseError;
  const ResponseError._() : super._();

  String get message;
  StackTrace? get stackTrace;
  int? get statusCode;
  @JsonKey(ignore: true)
  _$$ResponseErrorCopyWith<_$ResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}
