import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/database/database.dart';
import 'package:rick_and_morty/feature/characters/data/api/character_api.dart';
import 'package:rick_and_morty/feature/characters/data/converters/convertToCharacterTableData.dart';
import 'package:rick_and_morty/feature/characters/data/converters/convertToCharecter.dart';

import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/domain/repository/abstract_character_repository.dart';

@Singleton(as: AbstractCharacterRepository)
class CharacterRepositoryImpl implements AbstractCharacterRepository {
  final CharacterApi characterApi;
  final LocalDatabase db;

  CharacterRepositoryImpl({required this.characterApi, required this.db});

  @override
  Future<List<Character>> getAllCharacters() async {
    var query = await db.select(db.characterTable).get();
    if (query.isEmpty) {
      //if there are no entyties in DB
      List<Character> characters = await characterApi.getCharacters();
      //save them into DB
      for (var character in characters) {
        await db
            .into(db.characterTable)
            .insert(convertToCharacterTableData(character));
      }
      return characters;
    } else {
      // or get from DB
      return query.map((e) => convertToCharacter(e)).toList();
    }
  }

  @override
  Future<void> addToFavorite(int id) async {
    (db.update(db.characterTable)..where(
      (tbl) => tbl.id.equals(id),
    )).write(CharacterTableCompanion(isFavorite: Value(true)));
  }

  @override
  Future<void> removeFromFavorite(int id) async {
    (db.update(db.characterTable)..where(
      (tbl) => tbl.id.equals(id),
    )).write(CharacterTableCompanion(isFavorite: Value(false)));
  }
}
