// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_email_part1_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthEmailPart1Request _$AuthEmailPart1RequestFromJson(
    Map<String, dynamic> json) {
  return _AuthEmailPart1Request.fromJson(json);
}

/// @nodoc
mixin _$AuthEmailPart1Request {
  String get email => throw _privateConstructorUsedError;
  int get digits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthEmailPart1RequestCopyWith<AuthEmailPart1Request> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEmailPart1RequestCopyWith<$Res> {
  factory $AuthEmailPart1RequestCopyWith(AuthEmailPart1Request value,
          $Res Function(AuthEmailPart1Request) then) =
      _$AuthEmailPart1RequestCopyWithImpl<$Res, AuthEmailPart1Request>;
  @useResult
  $Res call({String email, int digits});
}

/// @nodoc
class _$AuthEmailPart1RequestCopyWithImpl<$Res,
        $Val extends AuthEmailPart1Request>
    implements $AuthEmailPart1RequestCopyWith<$Res> {
  _$AuthEmailPart1RequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? digits = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthEmailPart1RequestImplCopyWith<$Res>
    implements $AuthEmailPart1RequestCopyWith<$Res> {
  factory _$$AuthEmailPart1RequestImplCopyWith(
          _$AuthEmailPart1RequestImpl value,
          $Res Function(_$AuthEmailPart1RequestImpl) then) =
      __$$AuthEmailPart1RequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, int digits});
}

/// @nodoc
class __$$AuthEmailPart1RequestImplCopyWithImpl<$Res>
    extends _$AuthEmailPart1RequestCopyWithImpl<$Res,
        _$AuthEmailPart1RequestImpl>
    implements _$$AuthEmailPart1RequestImplCopyWith<$Res> {
  __$$AuthEmailPart1RequestImplCopyWithImpl(_$AuthEmailPart1RequestImpl _value,
      $Res Function(_$AuthEmailPart1RequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? digits = null,
  }) {
    return _then(_$AuthEmailPart1RequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$AuthEmailPart1RequestImpl implements _AuthEmailPart1Request {
  const _$AuthEmailPart1RequestImpl(
      {required this.email, required this.digits});

  factory _$AuthEmailPart1RequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthEmailPart1RequestImplFromJson(json);

  @override
  final String email;
  @override
  final int digits;

  @override
  String toString() {
    return 'AuthEmailPart1Request(email: $email, digits: $digits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEmailPart1RequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.digits, digits) || other.digits == digits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, digits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEmailPart1RequestImplCopyWith<_$AuthEmailPart1RequestImpl>
      get copyWith => __$$AuthEmailPart1RequestImplCopyWithImpl<
          _$AuthEmailPart1RequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthEmailPart1RequestImplToJson(
      this,
    );
  }
}

abstract class _AuthEmailPart1Request implements AuthEmailPart1Request {
  const factory _AuthEmailPart1Request(
      {required final String email,
      required final int digits}) = _$AuthEmailPart1RequestImpl;

  factory _AuthEmailPart1Request.fromJson(Map<String, dynamic> json) =
      _$AuthEmailPart1RequestImpl.fromJson;

  @override
  String get email;
  @override
  int get digits;
  @override
  @JsonKey(ignore: true)
  _$$AuthEmailPart1RequestImplCopyWith<_$AuthEmailPart1RequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
