// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthRegisterResponse _$AuthRegisterResponseFromJson(Map<String, dynamic> json) {
  return _AuthRegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthRegisterResponse {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthRegisterResponseCopyWith<AuthRegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRegisterResponseCopyWith<$Res> {
  factory $AuthRegisterResponseCopyWith(AuthRegisterResponse value,
          $Res Function(AuthRegisterResponse) then) =
      _$AuthRegisterResponseCopyWithImpl<$Res, AuthRegisterResponse>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AuthRegisterResponseCopyWithImpl<$Res,
        $Val extends AuthRegisterResponse>
    implements $AuthRegisterResponseCopyWith<$Res> {
  _$AuthRegisterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthRegisterResponseImplCopyWith<$Res>
    implements $AuthRegisterResponseCopyWith<$Res> {
  factory _$$AuthRegisterResponseImplCopyWith(_$AuthRegisterResponseImpl value,
          $Res Function(_$AuthRegisterResponseImpl) then) =
      __$$AuthRegisterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AuthRegisterResponseImplCopyWithImpl<$Res>
    extends _$AuthRegisterResponseCopyWithImpl<$Res, _$AuthRegisterResponseImpl>
    implements _$$AuthRegisterResponseImplCopyWith<$Res> {
  __$$AuthRegisterResponseImplCopyWithImpl(_$AuthRegisterResponseImpl _value,
      $Res Function(_$AuthRegisterResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AuthRegisterResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$AuthRegisterResponseImpl implements _AuthRegisterResponse {
  const _$AuthRegisterResponseImpl({required this.name});

  factory _$AuthRegisterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthRegisterResponseImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AuthRegisterResponse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRegisterResponseImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRegisterResponseImplCopyWith<_$AuthRegisterResponseImpl>
      get copyWith =>
          __$$AuthRegisterResponseImplCopyWithImpl<_$AuthRegisterResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthRegisterResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthRegisterResponse implements AuthRegisterResponse {
  const factory _AuthRegisterResponse({required final String name}) =
      _$AuthRegisterResponseImpl;

  factory _AuthRegisterResponse.fromJson(Map<String, dynamic> json) =
      _$AuthRegisterResponseImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$AuthRegisterResponseImplCopyWith<_$AuthRegisterResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
