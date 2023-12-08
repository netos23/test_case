// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geozone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Geozone _$GeozoneFromJson(Map<String, dynamic> json) {
  return _Geozone.fromJson(json);
}

/// @nodoc
mixin _$Geozone {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<List<List<double>>> get wkt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeozoneCopyWith<Geozone> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeozoneCopyWith<$Res> {
  factory $GeozoneCopyWith(Geozone value, $Res Function(Geozone) then) =
      _$GeozoneCopyWithImpl<$Res, Geozone>;
  @useResult
  $Res call({int? id, String name, List<List<List<double>>> wkt});
}

/// @nodoc
class _$GeozoneCopyWithImpl<$Res, $Val extends Geozone>
    implements $GeozoneCopyWith<$Res> {
  _$GeozoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? wkt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wkt: null == wkt
          ? _value.wkt
          : wkt // ignore: cast_nullable_to_non_nullable
              as List<List<List<double>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeozoneImplCopyWith<$Res> implements $GeozoneCopyWith<$Res> {
  factory _$$GeozoneImplCopyWith(
          _$GeozoneImpl value, $Res Function(_$GeozoneImpl) then) =
      __$$GeozoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, List<List<List<double>>> wkt});
}

/// @nodoc
class __$$GeozoneImplCopyWithImpl<$Res>
    extends _$GeozoneCopyWithImpl<$Res, _$GeozoneImpl>
    implements _$$GeozoneImplCopyWith<$Res> {
  __$$GeozoneImplCopyWithImpl(
      _$GeozoneImpl _value, $Res Function(_$GeozoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? wkt = null,
  }) {
    return _then(_$GeozoneImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wkt: null == wkt
          ? _value._wkt
          : wkt // ignore: cast_nullable_to_non_nullable
              as List<List<List<double>>>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$GeozoneImpl implements _Geozone {
  _$GeozoneImpl(
      {this.id,
      required this.name,
      required final List<List<List<double>>> wkt})
      : _wkt = wkt;

  factory _$GeozoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeozoneImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  final List<List<List<double>>> _wkt;
  @override
  List<List<List<double>>> get wkt {
    if (_wkt is EqualUnmodifiableListView) return _wkt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wkt);
  }

  @override
  String toString() {
    return 'Geozone(id: $id, name: $name, wkt: $wkt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeozoneImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._wkt, _wkt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_wkt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeozoneImplCopyWith<_$GeozoneImpl> get copyWith =>
      __$$GeozoneImplCopyWithImpl<_$GeozoneImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeozoneImplToJson(
      this,
    );
  }
}

abstract class _Geozone implements Geozone {
  factory _Geozone(
      {final int? id,
      required final String name,
      required final List<List<List<double>>> wkt}) = _$GeozoneImpl;

  factory _Geozone.fromJson(Map<String, dynamic> json) = _$GeozoneImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  List<List<List<double>>> get wkt;
  @override
  @JsonKey(ignore: true)
  _$$GeozoneImplCopyWith<_$GeozoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
