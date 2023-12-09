// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommends.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Recommends _$RecommendsFromJson(Map<String, dynamic> json) {
  return _Recommends.fromJson(json);
}

/// @nodoc
mixin _$Recommends {
  String? get title => throw _privateConstructorUsedError;
  List<Source>? get sources => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendsCopyWith<Recommends> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendsCopyWith<$Res> {
  factory $RecommendsCopyWith(
          Recommends value, $Res Function(Recommends) then) =
      _$RecommendsCopyWithImpl<$Res, Recommends>;
  @useResult
  $Res call({String? title, List<Source>? sources});
}

/// @nodoc
class _$RecommendsCopyWithImpl<$Res, $Val extends Recommends>
    implements $RecommendsCopyWith<$Res> {
  _$RecommendsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? sources = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendsImplCopyWith<$Res>
    implements $RecommendsCopyWith<$Res> {
  factory _$$RecommendsImplCopyWith(
          _$RecommendsImpl value, $Res Function(_$RecommendsImpl) then) =
      __$$RecommendsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, List<Source>? sources});
}

/// @nodoc
class __$$RecommendsImplCopyWithImpl<$Res>
    extends _$RecommendsCopyWithImpl<$Res, _$RecommendsImpl>
    implements _$$RecommendsImplCopyWith<$Res> {
  __$$RecommendsImplCopyWithImpl(
      _$RecommendsImpl _value, $Res Function(_$RecommendsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? sources = freezed,
  }) {
    return _then(_$RecommendsImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      sources: freezed == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$RecommendsImpl implements _Recommends {
  _$RecommendsImpl({this.title, final List<Source>? sources})
      : _sources = sources;

  factory _$RecommendsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendsImplFromJson(json);

  @override
  final String? title;
  final List<Source>? _sources;
  @override
  List<Source>? get sources {
    final value = _sources;
    if (value == null) return null;
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Recommends(title: $title, sources: $sources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendsImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._sources, _sources));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_sources));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendsImplCopyWith<_$RecommendsImpl> get copyWith =>
      __$$RecommendsImplCopyWithImpl<_$RecommendsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendsImplToJson(
      this,
    );
  }
}

abstract class _Recommends implements Recommends {
  factory _Recommends({final String? title, final List<Source>? sources}) =
      _$RecommendsImpl;

  factory _Recommends.fromJson(Map<String, dynamic> json) =
      _$RecommendsImpl.fromJson;

  @override
  String? get title;
  @override
  List<Source>? get sources;
  @override
  @JsonKey(ignore: true)
  _$$RecommendsImplCopyWith<_$RecommendsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
