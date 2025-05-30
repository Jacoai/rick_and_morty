import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/database/database.dart';
import 'package:rick_and_morty/core/shared/constants.dart';
import 'package:rick_and_morty/feature/characters/data/api/character_api.dart';
import 'package:rick_and_morty/feature/characters/data/converters/convert_to_character_table_data.dart';
import 'package:rick_and_morty/feature/characters/data/converters/convert_to_charecter.dart';

import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/domain/repository/abstract_character_repository.dart';

@Singleton(as: AbstractCharacterRepository)
class CharacterRepositoryImpl implements AbstractCharacterRepository {
  final CharacterApi characterApi;
  final LocalDatabase db;

  CharacterRepositoryImpl({required this.characterApi, required this.db});

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

  @override
  Future<Stream<List<Character>>> streamCharacter() async {
    var query = await db.select(db.characterTable).get();
    if (query.isEmpty) {
      //if there are no entyties in DB
      await loadListCharacters(
        List.generate(Constants.charactersPagination, (index) => index + 1),
      );
    }
    return db
        .select(db.characterTable)
        .map((character) => convertToCharacter(character))
        .watch();
  }

  Future<void> insertCharacters(List<Character> characters) async {
    for (var character in characters) {
      await db
          .into(db.characterTable)
          .insert(convertToCharacterTableData(character));
    }
  }

  @override
  Future<Stream<List<Character>>> streamFavoriteCharacter() async {
    return (db.select(db.characterTable)..where(
      (tbl) => tbl.isFavorite.equals(true),
    )).map((character) => convertToCharacter(character)).watch();
  }

  @override
  Future<void> loadListCharacters(List<int> ids) async {
    final characters = await characterApi.getListCharacters(ids);
    await insertCharacters(characters);
  }
}



  // @override
  // Future<List<Character>> getAllCharacters() async {
  //   var query = await db.select(db.characterTable).get();
  //   if (query.isEmpty) {
  //     //if there are no entyties in DB
  //     List<Character> characters = await characterApi.getCharacters();
  //     //save them into DB
  //     for (var character in characters) {
  //       await db
  //           .into(db.characterTable)
  //           .insert(convertToCharacterTableData(character));
  //     }
  //     return characters;
  //   } else {
  //     // or get from DB
  //     return query.map((e) => convertToCharacter(e)).toList();
  //   }
  // }