// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  String? get name => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get educationText => throw _privateConstructorUsedError;
  int? get test => throw _privateConstructorUsedError;
  List<Course>? get sources => throw _privateConstructorUsedError;
  bool? get isSelect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {String? name,
      String? picture,
      String? description,
      String? educationText,
      int? test,
      List<Course>? sources,
      bool? isSelect});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? picture = freezed,
    Object? description = freezed,
    Object? educationText = freezed,
    Object? test = freezed,
    Object? sources = freezed,
    Object? isSelect = freezed,
  }) {
    return _then(_value.copyWith(
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
      educationText: freezed == educationText
          ? _value.educationText
          : educationText // ignore: cast_nullable_to_non_nullable
              as String?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as int?,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
      isSelect: freezed == isSelect
          ? _value.isSelect
          : isSelect // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? picture,
      String? description,
      String? educationText,
      int? test,
      List<Course>? sources,
      bool? isSelect});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? picture = freezed,
    Object? description = freezed,
    Object? educationText = freezed,
    Object? test = freezed,
    Object? sources = freezed,
    Object? isSelect = freezed,
  }) {
    return _then(_$CourseImpl(
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
      educationText: freezed == educationText
          ? _value.educationText
          : educationText // ignore: cast_nullable_to_non_nullable
              as String?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as int?,
      sources: freezed == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
      isSelect: freezed == isSelect
          ? _value.isSelect
          : isSelect // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  _$CourseImpl(
      {this.name,
      this.picture,
      this.description,
      this.educationText,
      this.test,
      final List<Course>? sources,
      this.isSelect})
      : _sources = sources;

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? picture;
  @override
  final String? description;
  @override
  final String? educationText;
  @override
  final int? test;
  final List<Course>? _sources;
  @override
  List<Course>? get sources {
    final value = _sources;
    if (value == null) return null;
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isSelect;

  @override
  String toString() {
    return 'Course(name: $name, picture: $picture, description: $description, educationText: $educationText, test: $test, sources: $sources, isSelect: $isSelect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.educationText, educationText) ||
                other.educationText == educationText) &&
            (identical(other.test, test) || other.test == test) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.isSelect, isSelect) ||
                other.isSelect == isSelect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      picture,
      description,
      educationText,
      test,
      const DeepCollectionEquality().hash(_sources),
      isSelect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  factory _Course(
      {final String? name,
      final String? picture,
      final String? description,
      final String? educationText,
      final int? test,
      final List<Course>? sources,
      final bool? isSelect}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get picture;
  @override
  String? get description;
  @override
  String? get educationText;
  @override
  int? get test;
  @override
  List<Course>? get sources;
  @override
  bool? get isSelect;
  @override
  @JsonKey(ignore: true)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
