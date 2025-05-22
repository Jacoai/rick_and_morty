// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../feature/characters/data/api/character_api.dart' as _i766;
import '../../feature/characters/data/repository/character_repository_impl.dart'
    as _i1037;
import '../../feature/characters/domain/repository/abstract_character_repository.dart'
    as _i820;
import '../../feature/characters/domain/usecases/get_chactacters_use_case.dart'
    as _i959;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i766.CharacterApi>(
      () => _i766.CharacterApi(dio: gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i820.AbstractCharacterRepository>(
      () => _i1037.CharacterRepositoryImpl(
        characterApi: gh<_i766.CharacterApi>(),
      ),
    );
    gh.factory<_i959.GetChactactersUseCase>(
      () =>
          _i959.GetChactactersUseCase(gh<_i820.AbstractCharacterRepository>()),
    );
    return this;
  }
}
