import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repo.freezed.dart';
part 'github_repo.g.dart';

@freezed
class GithubRepo with _$GithubRepo {
  const factory GithubRepo({
    required int id,
    required String name,
    String? description,
    @JsonKey(name: 'stargazers_count') @Default(0) int stargazersCount,
    String? language,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _GithubRepo;

  factory GithubRepo.fromJson(Map<String, dynamic> json) => _$GithubRepoFromJson(json);
}
