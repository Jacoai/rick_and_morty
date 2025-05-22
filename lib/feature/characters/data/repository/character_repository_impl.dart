import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters/data/api/character_api.dart';

import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/domain/repository/abstract_character_repository.dart';

@LazySingleton(as: AbstractCharacterRepository)
class CharacterRepositoryImpl implements AbstractCharacterRepository {
  final CharacterApi characterApi;

  CharacterRepositoryImpl({required this.characterApi});

  @override
  Future<List<Character>> getCharacters(int num) async {
    return await characterApi.getCharacters(num);
  }
}
