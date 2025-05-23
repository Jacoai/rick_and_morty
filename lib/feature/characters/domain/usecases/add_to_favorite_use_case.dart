import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/domain/repository/abstract_character_repository.dart';

@injectable
class AddToFavoriteUseCase {
  final AbstractCharacterRepository repository;
  AddToFavoriteUseCase(this.repository);

  Future<int> call(Character character) async {
    return await repository.addFavorite(character);
  }
}
