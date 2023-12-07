// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plugin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Plugin _$PluginFromJson(Map<String, dynamic> json) {
  return _Plugin.fromJson(json);
}

/// @nodoc
mixin _$Plugin {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_photo')
  double? get perPhoto => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PluginCopyWith<Plugin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PluginCopyWith<$Res> {
  factory $PluginCopyWith(Plugin value, $Res Function(Plugin) then) =
      _$PluginCopyWithImpl<$Res, Plugin>;
  @useResult
  $Res call(
      {int id,
      String name,
      String link,
      String? picture,
      String? description,
      @JsonKey(name: 'per_photo') double? perPhoto,
      bool? isSelected});
}

/// @nodoc
class _$PluginCopyWithImpl<$Res, $Val extends Plugin>
    implements $PluginCopyWith<$Res> {
  _$PluginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? link = null,
    Object? picture = freezed,
    Object? description = freezed,
    Object? perPhoto = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      perPhoto: freezed == perPhoto
          ? _value.perPhoto
          : perPhoto // ignore: cast_nullable_to_non_nullable
              as double?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PluginImplCopyWith<$Res> implements $PluginCopyWith<$Res> {
  factory _$$PluginImplCopyWith(
          _$PluginImpl value, $Res Function(_$PluginImpl) then) =
      __$$PluginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String link,
      String? picture,
      String? description,
      @JsonKey(name: 'per_photo') double? perPhoto,
      bool? isSelected});
}

/// @nodoc
class __$$PluginImplCopyWithImpl<$Res>
    extends _$PluginCopyWithImpl<$Res, _$PluginImpl>
    implements _$$PluginImplCopyWith<$Res> {
  __$$PluginImplCopyWithImpl(
      _$PluginImpl _value, $Res Function(_$PluginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? link = null,
    Object? picture = freezed,
    Object? description = freezed,
    Object? perPhoto = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$PluginImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      perPhoto: freezed == perPhoto
          ? _value.perPhoto
          : perPhoto // ignore: cast_nullable_to_non_nullable
              as double?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PluginImpl implements _Plugin {
  _$PluginImpl(
      {required this.id,
      required this.name,
      required this.link,
      this.picture,
      this.description,
      @JsonKey(name: 'per_photo') this.perPhoto,
      this.isSelected});

  factory _$PluginImpl.fromJson(Map<String, dynamic> json) =>
      _$$PluginImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String link;
  @override
  final String? picture;
  @override
  final String? description;
  @override
  @JsonKey(name: 'per_photo')
  final double? perPhoto;
  @override
  final bool? isSelected;

  @override
  String toString() {
    return 'Plugin(id: $id, name: $name, link: $link, picture: $picture, description: $description, perPhoto: $perPhoto, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PluginImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.perPhoto, perPhoto) ||
                other.perPhoto == perPhoto) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, link, picture, description, perPhoto, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PluginImplCopyWith<_$PluginImpl> get copyWith =>
      __$$PluginImplCopyWithImpl<_$PluginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PluginImplToJson(
      this,
    );
  }
}

abstract class _Plugin implements Plugin {
  factory _Plugin(
      {required final int id,
      required final String name,
      required final String link,
      final String? picture,
      final String? description,
      @JsonKey(name: 'per_photo') final double? perPhoto,
      final bool? isSelected}) = _$PluginImpl;

  factory _Plugin.fromJson(Map<String, dynamic> json) = _$PluginImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get link;
  @override
  String? get picture;
  @override
  String? get description;
  @override
  @JsonKey(name: 'per_photo')
  double? get perPhoto;
  @override
  bool? get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$PluginImplCopyWith<_$PluginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
