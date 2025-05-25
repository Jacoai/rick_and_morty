import 'package:rick_and_morty/core/database/database.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';

CharacterTableData convertToCharacterTableData(Character character) {
  return CharacterTableData(
    id: character.id,
    isFavorite: character.isFavorite,
    name: character.name,
    status: character.status,
    species: character.species,
    
    gender: character.gender,
    image: character.image,
  );
}
