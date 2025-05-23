import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';

abstract class AbstractCharacterRepository {
  Future<List<Character>> getCharacters(int num);
  Future<int> addFavorite(Character character);
}
