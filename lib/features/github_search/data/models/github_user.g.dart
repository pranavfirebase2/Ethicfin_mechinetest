// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GithubUserImpl _$$GithubUserImplFromJson(Map<String, dynamic> json) =>
    _$GithubUserImpl(
      id: (json['id'] as num).toInt(),
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
      name: json['name'] as String?,
      bio: json['bio'] as String?,
      followers: (json['followers'] as num?)?.toInt() ?? 0,
      following: (json['following'] as num?)?.toInt() ?? 0,
      publicRepos: (json['public_repos'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$GithubUserImplToJson(_$GithubUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'name': instance.name,
      'bio': instance.bio,
      'followers': instance.followers,
      'following': instance.following,
      'public_repos': instance.publicRepos,
    };
