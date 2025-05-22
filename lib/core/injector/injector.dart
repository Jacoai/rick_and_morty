import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/core/network/network_client.dart';
import 'package:rick_and_morty/feature/characters/data/api/character_api.dart';
import 'package:rick_and_morty/feature/characters/data/repository/character_repository_impl.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/get_chactacters_use_case.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() {
  getIt.registerFactory<Dio>(() => Dio());
  // getIt.registerFactory<Dio>(() => NetworkClient(Dio()).dio);

  // //character
  // getIt.registerLazySingleton<CharacterApi>(() => CharacterApi(dio: getIt()));
  // getIt.registerLazySingleton<CharacterRepositoryImpl>(
  //   () => CharacterRepositoryImpl(characterApi: getIt()),
  // );
  // getIt.registerLazySingleton<GetChactactersUseCase>(
  //   () => GetChactactersUseCase(getIt()),
  // );

  getIt.init();
}
