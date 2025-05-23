import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/feature/characters/domain/models/characer_location/character_location.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  factory Character({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required CharacterLocation origin, // name and link to location
    required CharacterLocation location, //name and link to last endpoint
    required String image,
    required List<String> episode,
    required String url,
    required DateTime created,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
