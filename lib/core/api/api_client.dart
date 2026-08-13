import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  ApiClient({Dio? dioOverride}) : dio = dioOverride ?? Dio(
    BaseOptions(
      baseUrl: 'https://api.github.com/',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Accept': 'application/vnd.github.v3+json',
      }
    )
  );

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    return await dio.get(path, queryParameters: queryParameters);
  }
}
