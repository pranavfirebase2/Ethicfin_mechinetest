import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_user.freezed.dart';
part 'github_user.g.dart';

@freezed
class GithubUser with _$GithubUser {
  const factory GithubUser({
    required int id,
    required String login,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
    String? name,
    String? bio,
    @Default(0) int followers,
    @Default(0) int following,
    @JsonKey(name: 'public_repos') @Default(0) int publicRepos,
  }) = _GithubUser;

  factory GithubUser.fromJson(Map<String, dynamic> json) => _$GithubUserFromJson(json);
}
