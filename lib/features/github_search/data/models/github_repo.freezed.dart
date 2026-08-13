// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GithubRepo _$GithubRepoFromJson(Map<String, dynamic> json) {
  return _GithubRepo.fromJson(json);
}

/// @nodoc
mixin _$GithubRepo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this GithubRepo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GithubRepo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GithubRepoCopyWith<GithubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoCopyWith<$Res> {
  factory $GithubRepoCopyWith(
    GithubRepo value,
    $Res Function(GithubRepo) then,
  ) = _$GithubRepoCopyWithImpl<$Res, GithubRepo>;
  @useResult
  $Res call({
    int id,
    String name,
    String? description,
    @JsonKey(name: 'stargazers_count') int stargazersCount,
    String? language,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class _$GithubRepoCopyWithImpl<$Res, $Val extends GithubRepo>
    implements $GithubRepoCopyWith<$Res> {
  _$GithubRepoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GithubRepo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? stargazersCount = null,
    Object? language = freezed,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            stargazersCount: null == stargazersCount
                ? _value.stargazersCount
                : stargazersCount // ignore: cast_nullable_to_non_nullable
                      as int,
            language: freezed == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GithubRepoImplCopyWith<$Res>
    implements $GithubRepoCopyWith<$Res> {
  factory _$$GithubRepoImplCopyWith(
    _$GithubRepoImpl value,
    $Res Function(_$GithubRepoImpl) then,
  ) = __$$GithubRepoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String? description,
    @JsonKey(name: 'stargazers_count') int stargazersCount,
    String? language,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class __$$GithubRepoImplCopyWithImpl<$Res>
    extends _$GithubRepoCopyWithImpl<$Res, _$GithubRepoImpl>
    implements _$$GithubRepoImplCopyWith<$Res> {
  __$$GithubRepoImplCopyWithImpl(
    _$GithubRepoImpl _value,
    $Res Function(_$GithubRepoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GithubRepo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? stargazersCount = null,
    Object? language = freezed,
    Object? updatedAt = null,
  }) {
    return _then(
      _$GithubRepoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        stargazersCount: null == stargazersCount
            ? _value.stargazersCount
            : stargazersCount // ignore: cast_nullable_to_non_nullable
                  as int,
        language: freezed == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubRepoImpl implements _GithubRepo {
  const _$GithubRepoImpl({
    required this.id,
    required this.name,
    this.description,
    @JsonKey(name: 'stargazers_count') this.stargazersCount = 0,
    this.language,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  });

  factory _$GithubRepoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubRepoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  final String? language;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'GithubRepo(id: $id, name: $name, description: $description, stargazersCount: $stargazersCount, language: $language, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    stargazersCount,
    language,
    updatedAt,
  );

  /// Create a copy of GithubRepo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubRepoImplCopyWith<_$GithubRepoImpl> get copyWith =>
      __$$GithubRepoImplCopyWithImpl<_$GithubRepoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubRepoImplToJson(this);
  }
}

abstract class _GithubRepo implements GithubRepo {
  const factory _GithubRepo({
    required final int id,
    required final String name,
    final String? description,
    @JsonKey(name: 'stargazers_count') final int stargazersCount,
    final String? language,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
  }) = _$GithubRepoImpl;

  factory _GithubRepo.fromJson(Map<String, dynamic> json) =
      _$GithubRepoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  String? get language;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of GithubRepo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GithubRepoImplCopyWith<_$GithubRepoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
