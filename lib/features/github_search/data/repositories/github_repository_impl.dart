import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/github_repository.dart';
import '../datasources/github_remote_datasource.dart';
import '../models/github_user.dart';
import '../models/github_repo.dart';

class GithubRepositoryImpl implements GithubRepository {
  final GithubRemoteDataSource remoteDataSource;

  GithubRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, GithubUser>> getUser(String username) async {
    try {
      final user = await remoteDataSource.getUser(username);
      return Right(user);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return const Left(ServerFailure('User not found'));
      }
      return const Left(ServerFailure('Failed to fetch user. Please check your network.'));
    } catch (e) {
      if (e.toString().contains('User not found')) {
        return const Left(ServerFailure('User not found'));
      }
      return const Left(ServerFailure('An unexpected error occurred.'));
    }
  }

  @override
  Future<Either<Failure, List<GithubRepo>>> getUserRepos(String username) async {
    try {
      final repos = await remoteDataSource.getUserRepos(username);
      return Right(repos);
    } catch (e) {
      return const Left(ServerFailure('Failed to fetch repositories.'));
    }
  }
}
