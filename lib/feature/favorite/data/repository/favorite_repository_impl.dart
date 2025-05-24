import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/database/database.dart';
import 'package:rick_and_morty/feature/characters/data/converters/convertToCharecter.dart';
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
        .map((character) => convertToCharacter(character))
        .watch();
  }
}
