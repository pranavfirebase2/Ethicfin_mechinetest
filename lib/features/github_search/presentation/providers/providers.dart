import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/api/api_client.dart';
import '../../data/datasources/github_remote_datasource.dart';
import '../../data/repositories/github_repository_impl.dart';
import '../../domain/repositories/github_repository.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient();
});

final githubRemoteDataSourceProvider = Provider<GithubRemoteDataSource>((ref) {
  return GithubRemoteDataSourceImpl(ref.watch(apiClientProvider));
});

final githubRepositoryProvider = Provider<GithubRepository>((ref) {
  return GithubRepositoryImpl(ref.watch(githubRemoteDataSourceProvider));
});
