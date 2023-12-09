// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLevel _$UserLevelFromJson(Map<String, dynamic> json) {
  return _UserLevel.fromJson(json);
}

/// @nodoc
mixin _$UserLevel {
  int get id => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'score_from')
  int get scoreFrom => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLevelCopyWith<UserLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLevelCopyWith<$Res> {
  factory $UserLevelCopyWith(UserLevel value, $Res Function(UserLevel) then) =
      _$UserLevelCopyWithImpl<$Res, UserLevel>;
  @useResult
  $Res call(
      {int id,
      String level,
      @JsonKey(name: 'score_from') int scoreFrom,
      String picture,
      String color});
}

/// @nodoc
class _$UserLevelCopyWithImpl<$Res, $Val extends UserLevel>
    implements $UserLevelCopyWith<$Res> {
  _$UserLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? scoreFrom = null,
    Object? picture = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      scoreFrom: null == scoreFrom
          ? _value.scoreFrom
          : scoreFrom // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLevelImplCopyWith<$Res>
    implements $UserLevelCopyWith<$Res> {
  factory _$$UserLevelImplCopyWith(
          _$UserLevelImpl value, $Res Function(_$UserLevelImpl) then) =
      __$$UserLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String level,
      @JsonKey(name: 'score_from') int scoreFrom,
      String picture,
      String color});
}

/// @nodoc
class __$$UserLevelImplCopyWithImpl<$Res>
    extends _$UserLevelCopyWithImpl<$Res, _$UserLevelImpl>
    implements _$$UserLevelImplCopyWith<$Res> {
  __$$UserLevelImplCopyWithImpl(
      _$UserLevelImpl _value, $Res Function(_$UserLevelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? scoreFrom = null,
    Object? picture = null,
    Object? color = null,
  }) {
    return _then(_$UserLevelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      scoreFrom: null == scoreFrom
          ? _value.scoreFrom
          : scoreFrom // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLevelImpl implements _UserLevel {
  _$UserLevelImpl(
      {required this.id,
      required this.level,
      @JsonKey(name: 'score_from') required this.scoreFrom,
      required this.picture,
      required this.color});

  factory _$UserLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLevelImplFromJson(json);

  @override
  final int id;
  @override
  final String level;
  @override
  @JsonKey(name: 'score_from')
  final int scoreFrom;
  @override
  final String picture;
  @override
  final String color;

  @override
  String toString() {
    return 'UserLevel(id: $id, level: $level, scoreFrom: $scoreFrom, picture: $picture, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLevelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.scoreFrom, scoreFrom) ||
                other.scoreFrom == scoreFrom) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, level, scoreFrom, picture, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLevelImplCopyWith<_$UserLevelImpl> get copyWith =>
      __$$UserLevelImplCopyWithImpl<_$UserLevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLevelImplToJson(
      this,
    );
  }
}

abstract class _UserLevel implements UserLevel {
  factory _UserLevel(
      {required final int id,
      required final String level,
      @JsonKey(name: 'score_from') required final int scoreFrom,
      required final String picture,
      required final String color}) = _$UserLevelImpl;

  factory _UserLevel.fromJson(Map<String, dynamic> json) =
      _$UserLevelImpl.fromJson;

  @override
  int get id;
  @override
  String get level;
  @override
  @JsonKey(name: 'score_from')
  int get scoreFrom;
  @override
  String get picture;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$UserLevelImplCopyWith<_$UserLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
