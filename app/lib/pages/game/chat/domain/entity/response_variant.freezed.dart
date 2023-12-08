// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseVariant _$ResponseVariantFromJson(Map<String, dynamic> json) {
  return _ResponseVariant.fromJson(json);
}

/// @nodoc
mixin _$ResponseVariant {
  String get message => throw _privateConstructorUsedError;
  List<ChatAction> get actions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseVariantCopyWith<ResponseVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseVariantCopyWith<$Res> {
  factory $ResponseVariantCopyWith(
          ResponseVariant value, $Res Function(ResponseVariant) then) =
      _$ResponseVariantCopyWithImpl<$Res, ResponseVariant>;
  @useResult
  $Res call({String message, List<ChatAction> actions});
}

/// @nodoc
class _$ResponseVariantCopyWithImpl<$Res, $Val extends ResponseVariant>
    implements $ResponseVariantCopyWith<$Res> {
  _$ResponseVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ChatAction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseVariantImplCopyWith<$Res>
    implements $ResponseVariantCopyWith<$Res> {
  factory _$$ResponseVariantImplCopyWith(_$ResponseVariantImpl value,
          $Res Function(_$ResponseVariantImpl) then) =
      __$$ResponseVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<ChatAction> actions});
}

/// @nodoc
class __$$ResponseVariantImplCopyWithImpl<$Res>
    extends _$ResponseVariantCopyWithImpl<$Res, _$ResponseVariantImpl>
    implements _$$ResponseVariantImplCopyWith<$Res> {
  __$$ResponseVariantImplCopyWithImpl(
      _$ResponseVariantImpl _value, $Res Function(_$ResponseVariantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? actions = null,
  }) {
    return _then(_$ResponseVariantImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ChatAction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseVariantImpl implements _ResponseVariant {
  _$ResponseVariantImpl(
      {required this.message, required final List<ChatAction> actions})
      : _actions = actions;

  factory _$ResponseVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseVariantImplFromJson(json);

  @override
  final String message;
  final List<ChatAction> _actions;
  @override
  List<ChatAction> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'ResponseVariant(message: $message, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseVariantImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseVariantImplCopyWith<_$ResponseVariantImpl> get copyWith =>
      __$$ResponseVariantImplCopyWithImpl<_$ResponseVariantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseVariantImplToJson(
      this,
    );
  }
}

abstract class _ResponseVariant implements ResponseVariant {
  factory _ResponseVariant(
      {required final String message,
      required final List<ChatAction> actions}) = _$ResponseVariantImpl;

  factory _ResponseVariant.fromJson(Map<String, dynamic> json) =
      _$ResponseVariantImpl.fromJson;

  @override
  String get message;
  @override
  List<ChatAction> get actions;
  @override
  @JsonKey(ignore: true)
  _$$ResponseVariantImplCopyWith<_$ResponseVariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
