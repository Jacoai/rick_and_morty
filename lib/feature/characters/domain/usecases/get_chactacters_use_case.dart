import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/domain/repository/abstract_character_repository.dart';

@injectable
class GetChactactersUseCase {
  final AbstractCharacterRepository repository;
  GetChactactersUseCase(this.repository);

  Future<List<Character>> call(int num) async {
    return await repository.getCharacters(num);
  }
}
