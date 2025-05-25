import 'package:injectable/injectable.dart';

import 'package:rick_and_morty/feature/characters/domain/repository/abstract_character_repository.dart';

@injectable
class LoadCharactersUseCase {
  final AbstractCharacterRepository _repository;
  LoadCharactersUseCase(this._repository);

  Future<void> call(List<int> ids) {
    return _repository.loadListCharacters(ids);
  }
}
