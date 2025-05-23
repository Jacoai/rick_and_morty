import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';

abstract class AbstractFavoriteRepository {
  Future<Stream<List<Character>>> streamCharacter();
  Future<void> deleteFromFavorite(int id);
}
