// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../feature/characters/data/api/character_api.dart' as _i766;
import '../../feature/characters/data/repository/character_repository_impl.dart'
    as _i1037;
import '../../feature/characters/domain/repository/abstract_character_repository.dart'
    as _i820;
import '../../feature/characters/domain/usecases/add_to_favorite_use_case.dart'
    as _i620;
import '../../feature/characters/domain/usecases/get_chactacters_use_case.dart'
    as _i959;
import '../database/database.dart' as _i660;
import '../network/network_client.dart' as _i30;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i660.LocalDatabase>(() => _i660.LocalDatabase());
    gh.lazySingleton<_i30.NetworkClient>(() => _i30.NetworkClient());
    gh.singleton<_i766.CharacterApi>(
      () => _i766.CharacterApi(networkClient: gh<_i30.NetworkClient>()),
    );
    gh.singleton<_i820.AbstractCharacterRepository>(
      () => _i1037.CharacterRepositoryImpl(
        characterApi: gh<_i766.CharacterApi>(),
        db: gh<_i660.LocalDatabase>(),
      ),
    );
    gh.factory<_i959.GetChactactersUseCase>(
      () =>
          _i959.GetChactactersUseCase(gh<_i820.AbstractCharacterRepository>()),
    );
    gh.factory<_i620.AddToFavoriteUseCase>(
      () => _i620.AddToFavoriteUseCase(gh<_i820.AbstractCharacterRepository>()),
    );
    return this;
  }
}
