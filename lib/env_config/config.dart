import 'package:injectable/injectable.dart';
import 'package:nasa_pod/env_config/env.dart';

abstract class Config {
  String get podUrl;
}

@Singleton(as: Config, env: [Env.prod], order: -1)
class ConfigProd extends Config {
  @override
  String get podUrl => 'https://api.nasa.gov/';
}
