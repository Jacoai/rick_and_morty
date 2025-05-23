import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/database/database.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/favorite/domain/repositoty/abstract_favorite_repository.dart';

@LazySingleton(as: AbstractFavoriteRepository)
class FavoriteRepositoryImpl implements AbstractFavoriteRepository {
  final LocalDatabase db;

  FavoriteRepositoryImpl({required this.db});

  @override
  Future<Stream<List<Character>>> streamCharacter() async {
    return db
        .select(db.characterTable)
        .map(
          (character) => Character(
            id: character.id,
            name: character.name,
            status: character.status,
            species: character.species,
            type: character.type,
            gender: character.gender,
            image: character.image,
            url: character.url,
            created: character.created,
          ),
        )
        .watch();
  }

  @override
  Future<void> deleteFromFavorite(int id) async {
    return db.delete(db.characterTable).where((tbl) => tbl.id.equals(id));
  }
}
