// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoData _$GeoDataFromJson(Map<String, dynamic> json) {
  return _GeoData.fromJson(json);
}

/// @nodoc
mixin _$GeoData {
  @JsonKey(name: 'city_fias')
  String get cityFias => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoDataCopyWith<GeoData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoDataCopyWith<$Res> {
  factory $GeoDataCopyWith(GeoData value, $Res Function(GeoData) then) =
      _$GeoDataCopyWithImpl<$Res, GeoData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'city_fias') String cityFias,
      String name,
      String fullName,
      String lat,
      String lon});
}

/// @nodoc
class _$GeoDataCopyWithImpl<$Res, $Val extends GeoData>
    implements $GeoDataCopyWith<$Res> {
  _$GeoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = null,
    Object? name = null,
    Object? fullName = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_value.copyWith(
      cityFias: null == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoDataImplCopyWith<$Res> implements $GeoDataCopyWith<$Res> {
  factory _$$GeoDataImplCopyWith(
          _$GeoDataImpl value, $Res Function(_$GeoDataImpl) then) =
      __$$GeoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'city_fias') String cityFias,
      String name,
      String fullName,
      String lat,
      String lon});
}

/// @nodoc
class __$$GeoDataImplCopyWithImpl<$Res>
    extends _$GeoDataCopyWithImpl<$Res, _$GeoDataImpl>
    implements _$$GeoDataImplCopyWith<$Res> {
  __$$GeoDataImplCopyWithImpl(
      _$GeoDataImpl _value, $Res Function(_$GeoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = null,
    Object? name = null,
    Object? fullName = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$GeoDataImpl(
      cityFias: null == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$GeoDataImpl implements _GeoData {
  const _$GeoDataImpl(
      {@JsonKey(name: 'city_fias') required this.cityFias,
      required this.name,
      required this.fullName,
      required this.lat,
      required this.lon});

  factory _$GeoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoDataImplFromJson(json);

  @override
  @JsonKey(name: 'city_fias')
  final String cityFias;
  @override
  final String name;
  @override
  final String fullName;
  @override
  final String lat;
  @override
  final String lon;

  @override
  String toString() {
    return 'GeoData(cityFias: $cityFias, name: $name, fullName: $fullName, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoDataImpl &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cityFias, name, fullName, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoDataImplCopyWith<_$GeoDataImpl> get copyWith =>
      __$$GeoDataImplCopyWithImpl<_$GeoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoDataImplToJson(
      this,
    );
  }
}

abstract class _GeoData implements GeoData {
  const factory _GeoData(
      {@JsonKey(name: 'city_fias') required final String cityFias,
      required final String name,
      required final String fullName,
      required final String lat,
      required final String lon}) = _$GeoDataImpl;

  factory _GeoData.fromJson(Map<String, dynamic> json) = _$GeoDataImpl.fromJson;

  @override
  @JsonKey(name: 'city_fias')
  String get cityFias;
  @override
  String get name;
  @override
  String get fullName;
  @override
  String get lat;
  @override
  String get lon;
  @override
  @JsonKey(ignore: true)
  _$$GeoDataImplCopyWith<_$GeoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
