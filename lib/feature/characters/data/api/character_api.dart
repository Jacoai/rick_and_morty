import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/network/network_client.dart';
import 'package:rick_and_morty/core/shared/constants.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';

@singleton
class CharacterApi {
  final NetworkClient networkClient;

  CharacterApi({required this.networkClient});

  Future<List<Character>> getCharacters({int pageNum = 1}) async {
    final response = await networkClient.dio.get(
      "${Constant.characterEndpoint}/?page=$pageNum",
    );
    List<dynamic> data = response.data['results'];

    List<Character> characters =
        data.map((character) => Character.fromJson(character)).toList();

    return characters;
  }
}
