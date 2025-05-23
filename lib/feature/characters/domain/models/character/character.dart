import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  factory Character({
    required int id,
    @Default(false) bool isFavorite,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required String image,
    required String url,
    required DateTime created,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
