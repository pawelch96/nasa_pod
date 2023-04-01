// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:nasa_pod/env_config/config.dart' as _i3;
import 'package:nasa_pod/features/random_pod/data/data_sources/helpers/auth_interceptor.dart'
    as _i5;
import 'package:nasa_pod/features/random_pod/data/data_sources/helpers/dio_factory.dart'
    as _i4;
import 'package:nasa_pod/features/random_pod/data/data_sources/helpers/pod_api_service_factory.dart'
    as _i8;
import 'package:nasa_pod/features/random_pod/domain/repositories/nasa_pod_repository.dart'
    as _i7;
import 'package:nasa_pod/features/random_pod/domain/usecases/get_random_pod.dart'
    as _i6;

const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.Config>(
      _i3.ConfigProd(),
      registerFor: {_prod},
    );
    gh.singleton<_i4.DioFactory>(_i4.DioFactoryImpl(gh<_i5.AuthInterceptor>()));
    gh.lazySingleton<_i6.GetRandomPod>(
        () => _i6.GetRandomPod(gh<_i7.PodRepository>()));
    gh.factory<_i8.PodApiServiceFactory>(
        () => _i8.PodApiServiceFactory(gh<_i4.DioFactory>()));
    return this;
  }
}
