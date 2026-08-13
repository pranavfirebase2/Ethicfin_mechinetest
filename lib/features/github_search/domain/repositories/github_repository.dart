import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../data/models/github_user.dart';
import '../../data/models/github_repo.dart';

abstract class GithubRepository {
  Future<Either<Failure, GithubUser>> getUser(String username);
  Future<Either<Failure, List<GithubRepo>>> getUserRepos(String username);
}
