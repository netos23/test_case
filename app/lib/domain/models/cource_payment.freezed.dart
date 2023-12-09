// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cource_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourcePayment _$CourcePaymentFromJson(Map<String, dynamic> json) {
  return _CourcePayment.fromJson(json);
}

/// @nodoc
mixin _$CourcePayment {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourcePaymentCopyWith<CourcePayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourcePaymentCopyWith<$Res> {
  factory $CourcePaymentCopyWith(
          CourcePayment value, $Res Function(CourcePayment) then) =
      _$CourcePaymentCopyWithImpl<$Res, CourcePayment>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$CourcePaymentCopyWithImpl<$Res, $Val extends CourcePayment>
    implements $CourcePaymentCopyWith<$Res> {
  _$CourcePaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourcePaymentImplCopyWith<$Res>
    implements $CourcePaymentCopyWith<$Res> {
  factory _$$CourcePaymentImplCopyWith(
          _$CourcePaymentImpl value, $Res Function(_$CourcePaymentImpl) then) =
      __$$CourcePaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$CourcePaymentImplCopyWithImpl<$Res>
    extends _$CourcePaymentCopyWithImpl<$Res, _$CourcePaymentImpl>
    implements _$$CourcePaymentImplCopyWith<$Res> {
  __$$CourcePaymentImplCopyWithImpl(
      _$CourcePaymentImpl _value, $Res Function(_$CourcePaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$CourcePaymentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourcePaymentImpl implements _CourcePayment {
  _$CourcePaymentImpl({required this.id});

  factory _$CourcePaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourcePaymentImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'CourcePayment(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourcePaymentImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourcePaymentImplCopyWith<_$CourcePaymentImpl> get copyWith =>
      __$$CourcePaymentImplCopyWithImpl<_$CourcePaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourcePaymentImplToJson(
      this,
    );
  }
}

abstract class _CourcePayment implements CourcePayment {
  factory _CourcePayment({required final int id}) = _$CourcePaymentImpl;

  factory _CourcePayment.fromJson(Map<String, dynamic> json) =
      _$CourcePaymentImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$CourcePaymentImplCopyWith<_$CourcePaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
