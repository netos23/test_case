// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatAction _$ChatActionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'message':
      return MessageChatAction.fromJson(json);
    case 'responce':
      return ResponceChatAction.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ChatAction',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ChatAction {
  Duration get duration => throw _privateConstructorUsedError;
  ChatMessage get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, ChatMessage message) message,
    required TResult Function(Duration duration, ChatMessage message,
            List<ResponseVariant> variants)
        responce,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, ChatMessage message)? message,
    TResult? Function(Duration duration, ChatMessage message,
            List<ResponseVariant> variants)?
        responce,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, ChatMessage message)? message,
    TResult Function(Duration duration, ChatMessage message,
            List<ResponseVariant> variants)?
        responce,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageChatAction value) message,
    required TResult Function(ResponceChatAction value) responce,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageChatAction value)? message,
    TResult? Function(ResponceChatAction value)? responce,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageChatAction value)? message,
    TResult Function(ResponceChatAction value)? responce,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatActionCopyWith<ChatAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatActionCopyWith<$Res> {
  factory $ChatActionCopyWith(
          ChatAction value, $Res Function(ChatAction) then) =
      _$ChatActionCopyWithImpl<$Res, ChatAction>;
  @useResult
  $Res call({Duration duration, ChatMessage message});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ChatActionCopyWithImpl<$Res, $Val extends ChatAction>
    implements $ChatActionCopyWith<$Res> {
  _$ChatActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageChatActionImplCopyWith<$Res>
    implements $ChatActionCopyWith<$Res> {
  factory _$$MessageChatActionImplCopyWith(_$MessageChatActionImpl value,
          $Res Function(_$MessageChatActionImpl) then) =
      __$$MessageChatActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration, ChatMessage message});

  @override
  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageChatActionImplCopyWithImpl<$Res>
    extends _$ChatActionCopyWithImpl<$Res, _$MessageChatActionImpl>
    implements _$$MessageChatActionImplCopyWith<$Res> {
  __$$MessageChatActionImplCopyWithImpl(_$MessageChatActionImpl _value,
      $Res Function(_$MessageChatActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? message = null,
  }) {
    return _then(_$MessageChatActionImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageChatActionImpl implements MessageChatAction {
  const _$MessageChatActionImpl(
      {this.duration = Duration.zero,
      required this.message,
      final String? $type})
      : $type = $type ?? 'message';

  factory _$MessageChatActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageChatActionImplFromJson(json);

  @override
  @JsonKey()
  final Duration duration;
  @override
  final ChatMessage message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChatAction.message(duration: $duration, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageChatActionImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, duration, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageChatActionImplCopyWith<_$MessageChatActionImpl> get copyWith =>
      __$$MessageChatActionImplCopyWithImpl<_$MessageChatActionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, ChatMessage message) message,
    required TResult Function(Duration duration, ChatMessage message,
            List<ResponseVariant> variants)
        responce,
  }) {
    return message(duration, this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, ChatMessage message)? message,
    TResult? Function(Duration duration, ChatMessage message,
            List<ResponseVariant> variants)?
        responce,
  }) {
    return message?.call(duration, this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, ChatMessage message)? message,
    TResult Function(Duration duration, ChatMessage message,
            List<ResponseVariant> variants)?
        responce,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(duration, this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageChatAction value) message,
    required TResult Function(ResponceChatAction value) responce,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageChatAction value)? message,
    TResult? Function(ResponceChatAction value)? responce,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageChatAction value)? message,
    TResult Function(ResponceChatAction value)? responce,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageChatActionImplToJson(
      this,
    );
  }
}

abstract class MessageChatAction implements ChatAction {
  const factory MessageChatAction(
      {final Duration duration,
      required final ChatMessage message}) = _$MessageChatActionImpl;

  factory MessageChatAction.fromJson(Map<String, dynamic> json) =
      _$MessageChatActionImpl.fromJson;

  @override
  Duration get duration;
  @override
  ChatMessage get message;
  @override
  @JsonKey(ignore: true)
  _$$MessageChatActionImplCopyWith<_$MessageChatActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResponceChatActionImplCopyWith<$Res>
    implements $ChatActionCopyWith<$Res> {
  factory _$$ResponceChatActionImplCopyWith(_$ResponceChatActionImpl value,
          $Res Function(_$ResponceChatActionImpl) then) =
      __$$ResponceChatActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Duration duration, ChatMessage message, List<ResponseVariant> variants});

  @override
  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$ResponceChatActionImplCopyWithImpl<$Res>
    extends _$ChatActionCopyWithImpl<$Res, _$ResponceChatActionImpl>
    implements _$$ResponceChatActionImplCopyWith<$Res> {
  __$$ResponceChatActionImplCopyWithImpl(_$ResponceChatActionImpl _value,
      $Res Function(_$ResponceChatActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? message = null,
    Object? variants = null,
  }) {
    return _then(_$ResponceChatActionImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<ResponseVariant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponceChatActionImpl implements ResponceChatAction {
  const _$ResponceChatActionImpl(
      {this.duration = Duration.zero,
      required this.message,
      final List<ResponseVariant> variants = const <ResponseVariant>[],
      final String? $type})
      : _variants = variants,
        $type = $type ?? 'responce';

  factory _$ResponceChatActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponceChatActionImplFromJson(json);

  @override
  @JsonKey()
  final Duration duration;
  @override
  final ChatMessage message;
  final List<ResponseVariant> _variants;
  @override
  @JsonKey()
  List<ResponseVariant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChatAction.responce(duration: $duration, message: $message, variants: $variants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponceChatActionImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, duration, message,
      const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponceChatActionImplCopyWith<_$ResponceChatActionImpl> get copyWith =>
      __$$ResponceChatActionImplCopyWithImpl<_$ResponceChatActionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, ChatMessage message) message,
    required TResult Function(Duration duration, ChatMessage message,
            List<ResponseVariant> variants)
        responce,
  }) {
    return responce(duration, this.message, variants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, ChatMessage message)? message,
    TResult? Function(Duration duration, ChatMessage message,
            List<ResponseVariant> variants)?
        responce,
  }) {
    return responce?.call(duration, this.message, variants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, ChatMessage message)? message,
    TResult Function(Duration duration, ChatMessage message,
            List<ResponseVariant> variants)?
        responce,
    required TResult orElse(),
  }) {
    if (responce != null) {
      return responce(duration, this.message, variants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageChatAction value) message,
    required TResult Function(ResponceChatAction value) responce,
  }) {
    return responce(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageChatAction value)? message,
    TResult? Function(ResponceChatAction value)? responce,
  }) {
    return responce?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageChatAction value)? message,
    TResult Function(ResponceChatAction value)? responce,
    required TResult orElse(),
  }) {
    if (responce != null) {
      return responce(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponceChatActionImplToJson(
      this,
    );
  }
}

abstract class ResponceChatAction implements ChatAction {
  const factory ResponceChatAction(
      {final Duration duration,
      required final ChatMessage message,
      final List<ResponseVariant> variants}) = _$ResponceChatActionImpl;

  factory ResponceChatAction.fromJson(Map<String, dynamic> json) =
      _$ResponceChatActionImpl.fromJson;

  @override
  Duration get duration;
  @override
  ChatMessage get message;
  List<ResponseVariant> get variants;
  @override
  @JsonKey(ignore: true)
  _$$ResponceChatActionImplCopyWith<_$ResponceChatActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
