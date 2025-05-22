import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/core/network/network_client.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() {
  getIt.registerFactory<Dio>(() => NetworkClient(Dio()).dio);

  getIt.init();
}
