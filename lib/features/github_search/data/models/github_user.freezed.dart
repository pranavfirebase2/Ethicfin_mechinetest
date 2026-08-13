// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GithubUser _$GithubUserFromJson(Map<String, dynamic> json) {
  return _GithubUser.fromJson(json);
}

/// @nodoc
mixin _$GithubUser {
  int get id => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  int get followers => throw _privateConstructorUsedError;
  int get following => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_repos')
  int get publicRepos => throw _privateConstructorUsedError;

  /// Serializes this GithubUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GithubUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GithubUserCopyWith<GithubUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubUserCopyWith<$Res> {
  factory $GithubUserCopyWith(
    GithubUser value,
    $Res Function(GithubUser) then,
  ) = _$GithubUserCopyWithImpl<$Res, GithubUser>;
  @useResult
  $Res call({
    int id,
    String login,
    @JsonKey(name: 'avatar_url') String avatarUrl,
    String? name,
    String? bio,
    int followers,
    int following,
    @JsonKey(name: 'public_repos') int publicRepos,
  });
}

/// @nodoc
class _$GithubUserCopyWithImpl<$Res, $Val extends GithubUser>
    implements $GithubUserCopyWith<$Res> {
  _$GithubUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GithubUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? avatarUrl = null,
    Object? name = freezed,
    Object? bio = freezed,
    Object? followers = null,
    Object? following = null,
    Object? publicRepos = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            login: null == login
                ? _value.login
                : login // ignore: cast_nullable_to_non_nullable
                      as String,
            avatarUrl: null == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            bio: freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String?,
            followers: null == followers
                ? _value.followers
                : followers // ignore: cast_nullable_to_non_nullable
                      as int,
            following: null == following
                ? _value.following
                : following // ignore: cast_nullable_to_non_nullable
                      as int,
            publicRepos: null == publicRepos
                ? _value.publicRepos
                : publicRepos // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GithubUserImplCopyWith<$Res>
    implements $GithubUserCopyWith<$Res> {
  factory _$$GithubUserImplCopyWith(
    _$GithubUserImpl value,
    $Res Function(_$GithubUserImpl) then,
  ) = __$$GithubUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String login,
    @JsonKey(name: 'avatar_url') String avatarUrl,
    String? name,
    String? bio,
    int followers,
    int following,
    @JsonKey(name: 'public_repos') int publicRepos,
  });
}

/// @nodoc
class __$$GithubUserImplCopyWithImpl<$Res>
    extends _$GithubUserCopyWithImpl<$Res, _$GithubUserImpl>
    implements _$$GithubUserImplCopyWith<$Res> {
  __$$GithubUserImplCopyWithImpl(
    _$GithubUserImpl _value,
    $Res Function(_$GithubUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GithubUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? avatarUrl = null,
    Object? name = freezed,
    Object? bio = freezed,
    Object? followers = null,
    Object? following = null,
    Object? publicRepos = null,
  }) {
    return _then(
      _$GithubUserImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        login: null == login
            ? _value.login
            : login // ignore: cast_nullable_to_non_nullable
                  as String,
        avatarUrl: null == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        bio: freezed == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String?,
        followers: null == followers
            ? _value.followers
            : followers // ignore: cast_nullable_to_non_nullable
                  as int,
        following: null == following
            ? _value.following
            : following // ignore: cast_nullable_to_non_nullable
                  as int,
        publicRepos: null == publicRepos
            ? _value.publicRepos
            : publicRepos // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubUserImpl implements _GithubUser {
  const _$GithubUserImpl({
    required this.id,
    required this.login,
    @JsonKey(name: 'avatar_url') required this.avatarUrl,
    this.name,
    this.bio,
    this.followers = 0,
    this.following = 0,
    @JsonKey(name: 'public_repos') this.publicRepos = 0,
  });

  factory _$GithubUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubUserImplFromJson(json);

  @override
  final int id;
  @override
  final String login;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
  @override
  final String? name;
  @override
  final String? bio;
  @override
  @JsonKey()
  final int followers;
  @override
  @JsonKey()
  final int following;
  @override
  @JsonKey(name: 'public_repos')
  final int publicRepos;

  @override
  String toString() {
    return 'GithubUser(id: $id, login: $login, avatarUrl: $avatarUrl, name: $name, bio: $bio, followers: $followers, following: $following, publicRepos: $publicRepos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.following, following) ||
                other.following == following) &&
            (identical(other.publicRepos, publicRepos) ||
                other.publicRepos == publicRepos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    login,
    avatarUrl,
    name,
    bio,
    followers,
    following,
    publicRepos,
  );

  /// Create a copy of GithubUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubUserImplCopyWith<_$GithubUserImpl> get copyWith =>
      __$$GithubUserImplCopyWithImpl<_$GithubUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubUserImplToJson(this);
  }
}

abstract class _GithubUser implements GithubUser {
  const factory _GithubUser({
    required final int id,
    required final String login,
    @JsonKey(name: 'avatar_url') required final String avatarUrl,
    final String? name,
    final String? bio,
    final int followers,
    final int following,
    @JsonKey(name: 'public_repos') final int publicRepos,
  }) = _$GithubUserImpl;

  factory _GithubUser.fromJson(Map<String, dynamic> json) =
      _$GithubUserImpl.fromJson;

  @override
  int get id;
  @override
  String get login;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override
  String? get name;
  @override
  String? get bio;
  @override
  int get followers;
  @override
  int get following;
  @override
  @JsonKey(name: 'public_repos')
  int get publicRepos;

  /// Create a copy of GithubUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GithubUserImplCopyWith<_$GithubUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
