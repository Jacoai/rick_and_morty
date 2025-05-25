import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/shared/constants.dart';

@lazySingleton
class NetworkClient {
  late final Dio _dio;

  NetworkClient() {
    _dio = Dio();
    _dio.options = BaseOptions(baseUrl: Constants.apiBaseUrl);
  }

  get dio => _dio;
}
