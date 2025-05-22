import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/shared/constants.dart';

class NetworkClient {
  final Dio _dio;

  NetworkClient(this._dio) {
    _dio.options = BaseOptions(baseUrl: Constant.apiBaseUrl);
  }

  get dio => _dio;

  // Future<List<Character>> getCharacters(int num) async {
  //   final response = await _dio.get(Constant.characterEndpoint);
  //   List<dynamic> data = response.data['results'];

  //   List<Character> characters =
  //       data.map((character) => Character.fromJson(character)).toList();

  //   return characters;
  // }
}
