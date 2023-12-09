// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessageLink _$ChatMessageLinkFromJson(Map<String, dynamic> json) {
  return _ChatMessageLink.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageLink {
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;
  bool get external => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageLinkCopyWith<ChatMessageLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageLinkCopyWith<$Res> {
  factory $ChatMessageLinkCopyWith(
          ChatMessageLink value, $Res Function(ChatMessageLink) then) =
      _$ChatMessageLinkCopyWithImpl<$Res, ChatMessageLink>;
  @useResult
  $Res call({int start, int end, bool external});
}

/// @nodoc
class _$ChatMessageLinkCopyWithImpl<$Res, $Val extends ChatMessageLink>
    implements $ChatMessageLinkCopyWith<$Res> {
  _$ChatMessageLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? external = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      external: null == external
          ? _value.external
          : external // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageLinkImplCopyWith<$Res>
    implements $ChatMessageLinkCopyWith<$Res> {
  factory _$$ChatMessageLinkImplCopyWith(_$ChatMessageLinkImpl value,
          $Res Function(_$ChatMessageLinkImpl) then) =
      __$$ChatMessageLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int start, int end, bool external});
}

/// @nodoc
class __$$ChatMessageLinkImplCopyWithImpl<$Res>
    extends _$ChatMessageLinkCopyWithImpl<$Res, _$ChatMessageLinkImpl>
    implements _$$ChatMessageLinkImplCopyWith<$Res> {
  __$$ChatMessageLinkImplCopyWithImpl(
      _$ChatMessageLinkImpl _value, $Res Function(_$ChatMessageLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? external = null,
  }) {
    return _then(_$ChatMessageLinkImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      external: null == external
          ? _value.external
          : external // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageLinkImpl implements _ChatMessageLink {
  _$ChatMessageLinkImpl(
      {required this.start, required this.end, this.external = false});

  factory _$ChatMessageLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageLinkImplFromJson(json);

  @override
  final int start;
  @override
  final int end;
  @override
  @JsonKey()
  final bool external;

  @override
  String toString() {
    return 'ChatMessageLink(start: $start, end: $end, external: $external)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageLinkImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.external, external) ||
                other.external == external));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, external);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageLinkImplCopyWith<_$ChatMessageLinkImpl> get copyWith =>
      __$$ChatMessageLinkImplCopyWithImpl<_$ChatMessageLinkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageLinkImplToJson(
      this,
    );
  }
}

abstract class _ChatMessageLink implements ChatMessageLink {
  factory _ChatMessageLink(
      {required final int start,
      required final int end,
      final bool external}) = _$ChatMessageLinkImpl;

  factory _ChatMessageLink.fromJson(Map<String, dynamic> json) =
      _$ChatMessageLinkImpl.fromJson;

  @override
  int get start;
  @override
  int get end;
  @override
  bool get external;
  @override
  @JsonKey(ignore: true)
  _$$ChatMessageLinkImplCopyWith<_$ChatMessageLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
