// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_email_part2_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthEmailPart2Request _$AuthEmailPart2RequestFromJson(
    Map<String, dynamic> json) {
  return _AuthPart2Request.fromJson(json);
}

/// @nodoc
mixin _$AuthEmailPart2Request {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthEmailPart2RequestCopyWith<AuthEmailPart2Request> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEmailPart2RequestCopyWith<$Res> {
  factory $AuthEmailPart2RequestCopyWith(AuthEmailPart2Request value,
          $Res Function(AuthEmailPart2Request) then) =
      _$AuthEmailPart2RequestCopyWithImpl<$Res, AuthEmailPart2Request>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$AuthEmailPart2RequestCopyWithImpl<$Res,
        $Val extends AuthEmailPart2Request>
    implements $AuthEmailPart2RequestCopyWith<$Res> {
  _$AuthEmailPart2RequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthPart2RequestImplCopyWith<$Res>
    implements $AuthEmailPart2RequestCopyWith<$Res> {
  factory _$$AuthPart2RequestImplCopyWith(_$AuthPart2RequestImpl value,
          $Res Function(_$AuthPart2RequestImpl) then) =
      __$$AuthPart2RequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$AuthPart2RequestImplCopyWithImpl<$Res>
    extends _$AuthEmailPart2RequestCopyWithImpl<$Res, _$AuthPart2RequestImpl>
    implements _$$AuthPart2RequestImplCopyWith<$Res> {
  __$$AuthPart2RequestImplCopyWithImpl(_$AuthPart2RequestImpl _value,
      $Res Function(_$AuthPart2RequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$AuthPart2RequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$AuthPart2RequestImpl implements _AuthPart2Request {
  const _$AuthPart2RequestImpl({required this.email, required this.code});

  factory _$AuthPart2RequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthPart2RequestImplFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthEmailPart2Request(email: $email, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthPart2RequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthPart2RequestImplCopyWith<_$AuthPart2RequestImpl> get copyWith =>
      __$$AuthPart2RequestImplCopyWithImpl<_$AuthPart2RequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthPart2RequestImplToJson(
      this,
    );
  }
}

abstract class _AuthPart2Request implements AuthEmailPart2Request {
  const factory _AuthPart2Request(
      {required final String email,
      required final String code}) = _$AuthPart2RequestImpl;

  factory _AuthPart2Request.fromJson(Map<String, dynamic> json) =
      _$AuthPart2RequestImpl.fromJson;

  @override
  String get email;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$AuthPart2RequestImplCopyWith<_$AuthPart2RequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
