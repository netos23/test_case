// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoursePreview _$CoursePreviewFromJson(Map<String, dynamic> json) {
  return _CoursePreview.fromJson(json);
}

/// @nodoc
mixin _$CoursePreview {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoursePreviewCopyWith<CoursePreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursePreviewCopyWith<$Res> {
  factory $CoursePreviewCopyWith(
          CoursePreview value, $Res Function(CoursePreview) then) =
      _$CoursePreviewCopyWithImpl<$Res, CoursePreview>;
  @useResult
  $Res call({int? id, String? name, String? picture, String? description});
}

/// @nodoc
class _$CoursePreviewCopyWithImpl<$Res, $Val extends CoursePreview>
    implements $CoursePreviewCopyWith<$Res> {
  _$CoursePreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? picture = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoursePreviewImplCopyWith<$Res>
    implements $CoursePreviewCopyWith<$Res> {
  factory _$$CoursePreviewImplCopyWith(
          _$CoursePreviewImpl value, $Res Function(_$CoursePreviewImpl) then) =
      __$$CoursePreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? picture, String? description});
}

/// @nodoc
class __$$CoursePreviewImplCopyWithImpl<$Res>
    extends _$CoursePreviewCopyWithImpl<$Res, _$CoursePreviewImpl>
    implements _$$CoursePreviewImplCopyWith<$Res> {
  __$$CoursePreviewImplCopyWithImpl(
      _$CoursePreviewImpl _value, $Res Function(_$CoursePreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? picture = freezed,
    Object? description = freezed,
  }) {
    return _then(_$CoursePreviewImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoursePreviewImpl implements _CoursePreview {
  _$CoursePreviewImpl({this.id, this.name, this.picture, this.description});

  factory _$CoursePreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoursePreviewImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? picture;
  @override
  final String? description;

  @override
  String toString() {
    return 'CoursePreview(id: $id, name: $name, picture: $picture, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursePreviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, picture, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursePreviewImplCopyWith<_$CoursePreviewImpl> get copyWith =>
      __$$CoursePreviewImplCopyWithImpl<_$CoursePreviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoursePreviewImplToJson(
      this,
    );
  }
}

abstract class _CoursePreview implements CoursePreview {
  factory _CoursePreview(
      {final int? id,
      final String? name,
      final String? picture,
      final String? description}) = _$CoursePreviewImpl;

  factory _CoursePreview.fromJson(Map<String, dynamic> json) =
      _$CoursePreviewImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get picture;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$CoursePreviewImplCopyWith<_$CoursePreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
