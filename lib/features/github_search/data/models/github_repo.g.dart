// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GithubRepoImpl _$$GithubRepoImplFromJson(Map<String, dynamic> json) =>
    _$GithubRepoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      stargazersCount: (json['stargazers_count'] as num?)?.toInt() ?? 0,
      language: json['language'] as String?,
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$GithubRepoImplToJson(_$GithubRepoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'language': instance.language,
      'updated_at': instance.updatedAt.toIso8601String(),
    };
