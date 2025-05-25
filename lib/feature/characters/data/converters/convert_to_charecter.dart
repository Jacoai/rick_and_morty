import 'package:rick_and_morty/core/database/database.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';

Character convertToCharacter(CharacterTableData tableData) {
  return Character(
    id: tableData.id,
    isFavorite: tableData.isFavorite,
    name: tableData.name,
    status: tableData.status,
    species: tableData.species,
    gender: tableData.gender,
    image: tableData.image,
  );
}
