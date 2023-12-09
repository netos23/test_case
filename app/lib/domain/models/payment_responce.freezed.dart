// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_responce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) {
  return _PaymentResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentResponse {
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'success_url')
  String get successUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'failed_url')
  String get failedUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentResponseCopyWith<PaymentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResponseCopyWith<$Res> {
  factory $PaymentResponseCopyWith(
          PaymentResponse value, $Res Function(PaymentResponse) then) =
      _$PaymentResponseCopyWithImpl<$Res, PaymentResponse>;
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: 'success_url') String successUrl,
      @JsonKey(name: 'failed_url') String failedUrl});
}

/// @nodoc
class _$PaymentResponseCopyWithImpl<$Res, $Val extends PaymentResponse>
    implements $PaymentResponseCopyWith<$Res> {
  _$PaymentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? successUrl = null,
    Object? failedUrl = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      successUrl: null == successUrl
          ? _value.successUrl
          : successUrl // ignore: cast_nullable_to_non_nullable
              as String,
      failedUrl: null == failedUrl
          ? _value.failedUrl
          : failedUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentResponseImplCopyWith<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  factory _$$PaymentResponseImplCopyWith(_$PaymentResponseImpl value,
          $Res Function(_$PaymentResponseImpl) then) =
      __$$PaymentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: 'success_url') String successUrl,
      @JsonKey(name: 'failed_url') String failedUrl});
}

/// @nodoc
class __$$PaymentResponseImplCopyWithImpl<$Res>
    extends _$PaymentResponseCopyWithImpl<$Res, _$PaymentResponseImpl>
    implements _$$PaymentResponseImplCopyWith<$Res> {
  __$$PaymentResponseImplCopyWithImpl(
      _$PaymentResponseImpl _value, $Res Function(_$PaymentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? successUrl = null,
    Object? failedUrl = null,
  }) {
    return _then(_$PaymentResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      successUrl: null == successUrl
          ? _value.successUrl
          : successUrl // ignore: cast_nullable_to_non_nullable
              as String,
      failedUrl: null == failedUrl
          ? _value.failedUrl
          : failedUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentResponseImpl implements _PaymentResponse {
  _$PaymentResponseImpl(
      {required this.url,
      @JsonKey(name: 'success_url') required this.successUrl,
      @JsonKey(name: 'failed_url') required this.failedUrl});

  factory _$PaymentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentResponseImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey(name: 'success_url')
  final String successUrl;
  @override
  @JsonKey(name: 'failed_url')
  final String failedUrl;

  @override
  String toString() {
    return 'PaymentResponse(url: $url, successUrl: $successUrl, failedUrl: $failedUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentResponseImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.successUrl, successUrl) ||
                other.successUrl == successUrl) &&
            (identical(other.failedUrl, failedUrl) ||
                other.failedUrl == failedUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, successUrl, failedUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentResponseImplCopyWith<_$PaymentResponseImpl> get copyWith =>
      __$$PaymentResponseImplCopyWithImpl<_$PaymentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentResponse implements PaymentResponse {
  factory _PaymentResponse(
          {required final String url,
          @JsonKey(name: 'success_url') required final String successUrl,
          @JsonKey(name: 'failed_url') required final String failedUrl}) =
      _$PaymentResponseImpl;

  factory _PaymentResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentResponseImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(name: 'success_url')
  String get successUrl;
  @override
  @JsonKey(name: 'failed_url')
  String get failedUrl;
  @override
  @JsonKey(ignore: true)
  _$$PaymentResponseImplCopyWith<_$PaymentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
