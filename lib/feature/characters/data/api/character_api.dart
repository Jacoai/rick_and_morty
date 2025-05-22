import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/shared/constants.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';

@injectable
class CharacterApi {
  final Dio dio;

  CharacterApi({required this.dio});

  Future<List<Character>> getCharacters(int num) async {
    final response = await dio.get(Constant.characterEndpoint);
    List<dynamic> data = response.data['results'];

    List<Character> characters =
        data.map((character) => Character.fromJson(character)).toList();

    return characters;
  }
}
