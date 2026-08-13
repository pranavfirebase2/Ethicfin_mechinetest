import '../../../../core/api/api_client.dart';
import '../models/github_user.dart';
import '../models/github_repo.dart';
import 'package:dio/dio.dart';

abstract class GithubRemoteDataSource {
  Future<GithubUser> getUser(String username);
  Future<List<GithubRepo>> getUserRepos(String username);
}

class GithubRemoteDataSourceImpl implements GithubRemoteDataSource {
  final ApiClient apiClient;

  GithubRemoteDataSourceImpl(this.apiClient);

  @override
  Future<GithubUser> getUser(String username) async {
    try {
      final response = await apiClient.get('users/$username');
      return GithubUser.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw Exception('User not found');
      }
      rethrow;
    }
  }

  @override
  Future<List<GithubRepo>> getUserRepos(String username) async {
    final response = await apiClient.get('users/$username/repos');
    return (response.data as List).map((e) => GithubRepo.fromJson(e)).toList();
  }
}
