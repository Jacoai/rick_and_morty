import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';

abstract class AbstractCharacterRepository {
  //Future<List<Character>> getAllCharacters();
  Future<Stream<List<Character>>> streamCharacter();
  Future<void> addToFavorite(int id);
  Future<void> removeFromFavorite(int id);
}
