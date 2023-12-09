// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopUser _$TopUserFromJson(Map<String, dynamic> json) {
  return _TopUser.fromJson(json);
}

/// @nodoc
mixin _$TopUser {
  String get name => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_score')
  int get totalScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopUserCopyWith<TopUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUserCopyWith<$Res> {
  factory $TopUserCopyWith(TopUser value, $Res Function(TopUser) then) =
      _$TopUserCopyWithImpl<$Res, TopUser>;
  @useResult
  $Res call(
      {String name,
      String level,
      @JsonKey(name: 'total_score') int totalScore});
}

/// @nodoc
class _$TopUserCopyWithImpl<$Res, $Val extends TopUser>
    implements $TopUserCopyWith<$Res> {
  _$TopUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? level = null,
    Object? totalScore = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopUserImplCopyWith<$Res> implements $TopUserCopyWith<$Res> {
  factory _$$TopUserImplCopyWith(
          _$TopUserImpl value, $Res Function(_$TopUserImpl) then) =
      __$$TopUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String level,
      @JsonKey(name: 'total_score') int totalScore});
}

/// @nodoc
class __$$TopUserImplCopyWithImpl<$Res>
    extends _$TopUserCopyWithImpl<$Res, _$TopUserImpl>
    implements _$$TopUserImplCopyWith<$Res> {
  __$$TopUserImplCopyWithImpl(
      _$TopUserImpl _value, $Res Function(_$TopUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? level = null,
    Object? totalScore = null,
  }) {
    return _then(_$TopUserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopUserImpl implements _TopUser {
  _$TopUserImpl(
      {required this.name,
      required this.level,
      @JsonKey(name: 'total_score') required this.totalScore});

  factory _$TopUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopUserImplFromJson(json);

  @override
  final String name;
  @override
  final String level;
  @override
  @JsonKey(name: 'total_score')
  final int totalScore;

  @override
  String toString() {
    return 'TopUser(name: $name, level: $level, totalScore: $totalScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, level, totalScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUserImplCopyWith<_$TopUserImpl> get copyWith =>
      __$$TopUserImplCopyWithImpl<_$TopUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopUserImplToJson(
      this,
    );
  }
}

abstract class _TopUser implements TopUser {
  factory _TopUser(
          {required final String name,
          required final String level,
          @JsonKey(name: 'total_score') required final int totalScore}) =
      _$TopUserImpl;

  factory _TopUser.fromJson(Map<String, dynamic> json) = _$TopUserImpl.fromJson;

  @override
  String get name;
  @override
  String get level;
  @override
  @JsonKey(name: 'total_score')
  int get totalScore;
  @override
  @JsonKey(ignore: true)
  _$$TopUserImplCopyWith<_$TopUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
