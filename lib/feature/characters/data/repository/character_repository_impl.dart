import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/database/database.dart';
import 'package:rick_and_morty/feature/characters/data/api/character_api.dart';

import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/domain/repository/abstract_character_repository.dart';

@Singleton(as: AbstractCharacterRepository)
class CharacterRepositoryImpl implements AbstractCharacterRepository {
  final CharacterApi characterApi;
  final LocalDatabase db;

  CharacterRepositoryImpl({required this.characterApi, required this.db});

  @override
  Future<List<Character>> getCharacters(int num) async {
    return await characterApi.getCharacters(num);
  }

  @override
  Future<int> addFavorite(Character character) async {
    int res = await db
        .into(db.characterTable)
        .insert(
          CharacterTableData(
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
        );

    

    return res;
  }
}
