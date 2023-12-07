// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShowCaseBanner _$ShowCaseBannerFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'imageBanner':
      return ImageBanner.fromJson(json);
    case 'buttonBanner':
      return ButtonBanner.fromJson(json);
    case 'titleBanner':
      return TitleBanner.fromJson(json);
    case 'markdownBanner':
      return MarkdownBanner.fromJson(json);
    case 'sliderBanner':
      return SliderBanner.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'ShowCaseBanner',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$ShowCaseBanner {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)
        imageBanner,
    required TResult Function(String text, String? link) buttonBanner,
    required TResult Function(String text) titleBanner,
    required TResult Function(String text) markdownBanner,
    required TResult Function(List<SliderItem> images) sliderBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult? Function(String text, String? link)? buttonBanner,
    TResult? Function(String text)? titleBanner,
    TResult? Function(String text)? markdownBanner,
    TResult? Function(List<SliderItem> images)? sliderBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult Function(String text, String? link)? buttonBanner,
    TResult Function(String text)? titleBanner,
    TResult Function(String text)? markdownBanner,
    TResult Function(List<SliderItem> images)? sliderBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageBanner value) imageBanner,
    required TResult Function(ButtonBanner value) buttonBanner,
    required TResult Function(TitleBanner value) titleBanner,
    required TResult Function(MarkdownBanner value) markdownBanner,
    required TResult Function(SliderBanner value) sliderBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageBanner value)? imageBanner,
    TResult? Function(ButtonBanner value)? buttonBanner,
    TResult? Function(TitleBanner value)? titleBanner,
    TResult? Function(MarkdownBanner value)? markdownBanner,
    TResult? Function(SliderBanner value)? sliderBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageBanner value)? imageBanner,
    TResult Function(ButtonBanner value)? buttonBanner,
    TResult Function(TitleBanner value)? titleBanner,
    TResult Function(MarkdownBanner value)? markdownBanner,
    TResult Function(SliderBanner value)? sliderBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowCaseBannerCopyWith<$Res> {
  factory $ShowCaseBannerCopyWith(
          ShowCaseBanner value, $Res Function(ShowCaseBanner) then) =
      _$ShowCaseBannerCopyWithImpl<$Res, ShowCaseBanner>;
}

/// @nodoc
class _$ShowCaseBannerCopyWithImpl<$Res, $Val extends ShowCaseBanner>
    implements $ShowCaseBannerCopyWith<$Res> {
  _$ShowCaseBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImageBannerImplCopyWith<$Res> {
  factory _$$ImageBannerImplCopyWith(
          _$ImageBannerImpl value, $Res Function(_$ImageBannerImpl) then) =
      __$$ImageBannerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'image_url') String imageUrl, String? link});
}

/// @nodoc
class __$$ImageBannerImplCopyWithImpl<$Res>
    extends _$ShowCaseBannerCopyWithImpl<$Res, _$ImageBannerImpl>
    implements _$$ImageBannerImplCopyWith<$Res> {
  __$$ImageBannerImplCopyWithImpl(
      _$ImageBannerImpl _value, $Res Function(_$ImageBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? link = freezed,
  }) {
    return _then(_$ImageBannerImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$ImageBannerImpl implements ImageBanner {
  const _$ImageBannerImpl(
      {@JsonKey(name: 'image_url') required this.imageUrl,
      this.link,
      final String? $type})
      : $type = $type ?? 'imageBanner';

  factory _$ImageBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageBannerImplFromJson(json);

  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final String? link;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ShowCaseBanner.imageBanner(imageUrl: $imageUrl, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageBannerImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageBannerImplCopyWith<_$ImageBannerImpl> get copyWith =>
      __$$ImageBannerImplCopyWithImpl<_$ImageBannerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)
        imageBanner,
    required TResult Function(String text, String? link) buttonBanner,
    required TResult Function(String text) titleBanner,
    required TResult Function(String text) markdownBanner,
    required TResult Function(List<SliderItem> images) sliderBanner,
  }) {
    return imageBanner(imageUrl, link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult? Function(String text, String? link)? buttonBanner,
    TResult? Function(String text)? titleBanner,
    TResult? Function(String text)? markdownBanner,
    TResult? Function(List<SliderItem> images)? sliderBanner,
  }) {
    return imageBanner?.call(imageUrl, link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult Function(String text, String? link)? buttonBanner,
    TResult Function(String text)? titleBanner,
    TResult Function(String text)? markdownBanner,
    TResult Function(List<SliderItem> images)? sliderBanner,
    required TResult orElse(),
  }) {
    if (imageBanner != null) {
      return imageBanner(imageUrl, link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageBanner value) imageBanner,
    required TResult Function(ButtonBanner value) buttonBanner,
    required TResult Function(TitleBanner value) titleBanner,
    required TResult Function(MarkdownBanner value) markdownBanner,
    required TResult Function(SliderBanner value) sliderBanner,
  }) {
    return imageBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageBanner value)? imageBanner,
    TResult? Function(ButtonBanner value)? buttonBanner,
    TResult? Function(TitleBanner value)? titleBanner,
    TResult? Function(MarkdownBanner value)? markdownBanner,
    TResult? Function(SliderBanner value)? sliderBanner,
  }) {
    return imageBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageBanner value)? imageBanner,
    TResult Function(ButtonBanner value)? buttonBanner,
    TResult Function(TitleBanner value)? titleBanner,
    TResult Function(MarkdownBanner value)? markdownBanner,
    TResult Function(SliderBanner value)? sliderBanner,
    required TResult orElse(),
  }) {
    if (imageBanner != null) {
      return imageBanner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageBannerImplToJson(
      this,
    );
  }
}

abstract class ImageBanner implements ShowCaseBanner {
  const factory ImageBanner(
      {@JsonKey(name: 'image_url') required final String imageUrl,
      final String? link}) = _$ImageBannerImpl;

  factory ImageBanner.fromJson(Map<String, dynamic> json) =
      _$ImageBannerImpl.fromJson;

  @JsonKey(name: 'image_url')
  String get imageUrl;
  String? get link;
  @JsonKey(ignore: true)
  _$$ImageBannerImplCopyWith<_$ImageBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonBannerImplCopyWith<$Res> {
  factory _$$ButtonBannerImplCopyWith(
          _$ButtonBannerImpl value, $Res Function(_$ButtonBannerImpl) then) =
      __$$ButtonBannerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String? link});
}

/// @nodoc
class __$$ButtonBannerImplCopyWithImpl<$Res>
    extends _$ShowCaseBannerCopyWithImpl<$Res, _$ButtonBannerImpl>
    implements _$$ButtonBannerImplCopyWith<$Res> {
  __$$ButtonBannerImplCopyWithImpl(
      _$ButtonBannerImpl _value, $Res Function(_$ButtonBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? link = freezed,
  }) {
    return _then(_$ButtonBannerImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ButtonBannerImpl implements ButtonBanner {
  const _$ButtonBannerImpl({required this.text, this.link, final String? $type})
      : $type = $type ?? 'buttonBanner';

  factory _$ButtonBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ButtonBannerImplFromJson(json);

  @override
  final String text;
  @override
  final String? link;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ShowCaseBanner.buttonBanner(text: $text, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonBannerImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonBannerImplCopyWith<_$ButtonBannerImpl> get copyWith =>
      __$$ButtonBannerImplCopyWithImpl<_$ButtonBannerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)
        imageBanner,
    required TResult Function(String text, String? link) buttonBanner,
    required TResult Function(String text) titleBanner,
    required TResult Function(String text) markdownBanner,
    required TResult Function(List<SliderItem> images) sliderBanner,
  }) {
    return buttonBanner(text, link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult? Function(String text, String? link)? buttonBanner,
    TResult? Function(String text)? titleBanner,
    TResult? Function(String text)? markdownBanner,
    TResult? Function(List<SliderItem> images)? sliderBanner,
  }) {
    return buttonBanner?.call(text, link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult Function(String text, String? link)? buttonBanner,
    TResult Function(String text)? titleBanner,
    TResult Function(String text)? markdownBanner,
    TResult Function(List<SliderItem> images)? sliderBanner,
    required TResult orElse(),
  }) {
    if (buttonBanner != null) {
      return buttonBanner(text, link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageBanner value) imageBanner,
    required TResult Function(ButtonBanner value) buttonBanner,
    required TResult Function(TitleBanner value) titleBanner,
    required TResult Function(MarkdownBanner value) markdownBanner,
    required TResult Function(SliderBanner value) sliderBanner,
  }) {
    return buttonBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageBanner value)? imageBanner,
    TResult? Function(ButtonBanner value)? buttonBanner,
    TResult? Function(TitleBanner value)? titleBanner,
    TResult? Function(MarkdownBanner value)? markdownBanner,
    TResult? Function(SliderBanner value)? sliderBanner,
  }) {
    return buttonBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageBanner value)? imageBanner,
    TResult Function(ButtonBanner value)? buttonBanner,
    TResult Function(TitleBanner value)? titleBanner,
    TResult Function(MarkdownBanner value)? markdownBanner,
    TResult Function(SliderBanner value)? sliderBanner,
    required TResult orElse(),
  }) {
    if (buttonBanner != null) {
      return buttonBanner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonBannerImplToJson(
      this,
    );
  }
}

abstract class ButtonBanner implements ShowCaseBanner {
  const factory ButtonBanner({required final String text, final String? link}) =
      _$ButtonBannerImpl;

  factory ButtonBanner.fromJson(Map<String, dynamic> json) =
      _$ButtonBannerImpl.fromJson;

  String get text;
  String? get link;
  @JsonKey(ignore: true)
  _$$ButtonBannerImplCopyWith<_$ButtonBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleBannerImplCopyWith<$Res> {
  factory _$$TitleBannerImplCopyWith(
          _$TitleBannerImpl value, $Res Function(_$TitleBannerImpl) then) =
      __$$TitleBannerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$TitleBannerImplCopyWithImpl<$Res>
    extends _$ShowCaseBannerCopyWithImpl<$Res, _$TitleBannerImpl>
    implements _$$TitleBannerImplCopyWith<$Res> {
  __$$TitleBannerImplCopyWithImpl(
      _$TitleBannerImpl _value, $Res Function(_$TitleBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$TitleBannerImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleBannerImpl implements TitleBanner {
  const _$TitleBannerImpl({required this.text, final String? $type})
      : $type = $type ?? 'titleBanner';

  factory _$TitleBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitleBannerImplFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ShowCaseBanner.titleBanner(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleBannerImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleBannerImplCopyWith<_$TitleBannerImpl> get copyWith =>
      __$$TitleBannerImplCopyWithImpl<_$TitleBannerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)
        imageBanner,
    required TResult Function(String text, String? link) buttonBanner,
    required TResult Function(String text) titleBanner,
    required TResult Function(String text) markdownBanner,
    required TResult Function(List<SliderItem> images) sliderBanner,
  }) {
    return titleBanner(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult? Function(String text, String? link)? buttonBanner,
    TResult? Function(String text)? titleBanner,
    TResult? Function(String text)? markdownBanner,
    TResult? Function(List<SliderItem> images)? sliderBanner,
  }) {
    return titleBanner?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult Function(String text, String? link)? buttonBanner,
    TResult Function(String text)? titleBanner,
    TResult Function(String text)? markdownBanner,
    TResult Function(List<SliderItem> images)? sliderBanner,
    required TResult orElse(),
  }) {
    if (titleBanner != null) {
      return titleBanner(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageBanner value) imageBanner,
    required TResult Function(ButtonBanner value) buttonBanner,
    required TResult Function(TitleBanner value) titleBanner,
    required TResult Function(MarkdownBanner value) markdownBanner,
    required TResult Function(SliderBanner value) sliderBanner,
  }) {
    return titleBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageBanner value)? imageBanner,
    TResult? Function(ButtonBanner value)? buttonBanner,
    TResult? Function(TitleBanner value)? titleBanner,
    TResult? Function(MarkdownBanner value)? markdownBanner,
    TResult? Function(SliderBanner value)? sliderBanner,
  }) {
    return titleBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageBanner value)? imageBanner,
    TResult Function(ButtonBanner value)? buttonBanner,
    TResult Function(TitleBanner value)? titleBanner,
    TResult Function(MarkdownBanner value)? markdownBanner,
    TResult Function(SliderBanner value)? sliderBanner,
    required TResult orElse(),
  }) {
    if (titleBanner != null) {
      return titleBanner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleBannerImplToJson(
      this,
    );
  }
}

abstract class TitleBanner implements ShowCaseBanner {
  const factory TitleBanner({required final String text}) = _$TitleBannerImpl;

  factory TitleBanner.fromJson(Map<String, dynamic> json) =
      _$TitleBannerImpl.fromJson;

  String get text;
  @JsonKey(ignore: true)
  _$$TitleBannerImplCopyWith<_$TitleBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkdownBannerImplCopyWith<$Res> {
  factory _$$MarkdownBannerImplCopyWith(_$MarkdownBannerImpl value,
          $Res Function(_$MarkdownBannerImpl) then) =
      __$$MarkdownBannerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$MarkdownBannerImplCopyWithImpl<$Res>
    extends _$ShowCaseBannerCopyWithImpl<$Res, _$MarkdownBannerImpl>
    implements _$$MarkdownBannerImplCopyWith<$Res> {
  __$$MarkdownBannerImplCopyWithImpl(
      _$MarkdownBannerImpl _value, $Res Function(_$MarkdownBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$MarkdownBannerImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkdownBannerImpl implements MarkdownBanner {
  const _$MarkdownBannerImpl({required this.text, final String? $type})
      : $type = $type ?? 'markdownBanner';

  factory _$MarkdownBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkdownBannerImplFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ShowCaseBanner.markdownBanner(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkdownBannerImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkdownBannerImplCopyWith<_$MarkdownBannerImpl> get copyWith =>
      __$$MarkdownBannerImplCopyWithImpl<_$MarkdownBannerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)
        imageBanner,
    required TResult Function(String text, String? link) buttonBanner,
    required TResult Function(String text) titleBanner,
    required TResult Function(String text) markdownBanner,
    required TResult Function(List<SliderItem> images) sliderBanner,
  }) {
    return markdownBanner(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult? Function(String text, String? link)? buttonBanner,
    TResult? Function(String text)? titleBanner,
    TResult? Function(String text)? markdownBanner,
    TResult? Function(List<SliderItem> images)? sliderBanner,
  }) {
    return markdownBanner?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult Function(String text, String? link)? buttonBanner,
    TResult Function(String text)? titleBanner,
    TResult Function(String text)? markdownBanner,
    TResult Function(List<SliderItem> images)? sliderBanner,
    required TResult orElse(),
  }) {
    if (markdownBanner != null) {
      return markdownBanner(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageBanner value) imageBanner,
    required TResult Function(ButtonBanner value) buttonBanner,
    required TResult Function(TitleBanner value) titleBanner,
    required TResult Function(MarkdownBanner value) markdownBanner,
    required TResult Function(SliderBanner value) sliderBanner,
  }) {
    return markdownBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageBanner value)? imageBanner,
    TResult? Function(ButtonBanner value)? buttonBanner,
    TResult? Function(TitleBanner value)? titleBanner,
    TResult? Function(MarkdownBanner value)? markdownBanner,
    TResult? Function(SliderBanner value)? sliderBanner,
  }) {
    return markdownBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageBanner value)? imageBanner,
    TResult Function(ButtonBanner value)? buttonBanner,
    TResult Function(TitleBanner value)? titleBanner,
    TResult Function(MarkdownBanner value)? markdownBanner,
    TResult Function(SliderBanner value)? sliderBanner,
    required TResult orElse(),
  }) {
    if (markdownBanner != null) {
      return markdownBanner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkdownBannerImplToJson(
      this,
    );
  }
}

abstract class MarkdownBanner implements ShowCaseBanner {
  const factory MarkdownBanner({required final String text}) =
      _$MarkdownBannerImpl;

  factory MarkdownBanner.fromJson(Map<String, dynamic> json) =
      _$MarkdownBannerImpl.fromJson;

  String get text;
  @JsonKey(ignore: true)
  _$$MarkdownBannerImplCopyWith<_$MarkdownBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SliderBannerImplCopyWith<$Res> {
  factory _$$SliderBannerImplCopyWith(
          _$SliderBannerImpl value, $Res Function(_$SliderBannerImpl) then) =
      __$$SliderBannerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SliderItem> images});
}

/// @nodoc
class __$$SliderBannerImplCopyWithImpl<$Res>
    extends _$ShowCaseBannerCopyWithImpl<$Res, _$SliderBannerImpl>
    implements _$$SliderBannerImplCopyWith<$Res> {
  __$$SliderBannerImplCopyWithImpl(
      _$SliderBannerImpl _value, $Res Function(_$SliderBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$SliderBannerImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SliderItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderBannerImpl implements SliderBanner {
  const _$SliderBannerImpl(
      {required final List<SliderItem> images, final String? $type})
      : _images = images,
        $type = $type ?? 'sliderBanner';

  factory _$SliderBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderBannerImplFromJson(json);

  final List<SliderItem> _images;
  @override
  List<SliderItem> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ShowCaseBanner.sliderBanner(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderBannerImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderBannerImplCopyWith<_$SliderBannerImpl> get copyWith =>
      __$$SliderBannerImplCopyWithImpl<_$SliderBannerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)
        imageBanner,
    required TResult Function(String text, String? link) buttonBanner,
    required TResult Function(String text) titleBanner,
    required TResult Function(String text) markdownBanner,
    required TResult Function(List<SliderItem> images) sliderBanner,
  }) {
    return sliderBanner(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult? Function(String text, String? link)? buttonBanner,
    TResult? Function(String text)? titleBanner,
    TResult? Function(String text)? markdownBanner,
    TResult? Function(List<SliderItem> images)? sliderBanner,
  }) {
    return sliderBanner?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult Function(String text, String? link)? buttonBanner,
    TResult Function(String text)? titleBanner,
    TResult Function(String text)? markdownBanner,
    TResult Function(List<SliderItem> images)? sliderBanner,
    required TResult orElse(),
  }) {
    if (sliderBanner != null) {
      return sliderBanner(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageBanner value) imageBanner,
    required TResult Function(ButtonBanner value) buttonBanner,
    required TResult Function(TitleBanner value) titleBanner,
    required TResult Function(MarkdownBanner value) markdownBanner,
    required TResult Function(SliderBanner value) sliderBanner,
  }) {
    return sliderBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageBanner value)? imageBanner,
    TResult? Function(ButtonBanner value)? buttonBanner,
    TResult? Function(TitleBanner value)? titleBanner,
    TResult? Function(MarkdownBanner value)? markdownBanner,
    TResult? Function(SliderBanner value)? sliderBanner,
  }) {
    return sliderBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageBanner value)? imageBanner,
    TResult Function(ButtonBanner value)? buttonBanner,
    TResult Function(TitleBanner value)? titleBanner,
    TResult Function(MarkdownBanner value)? markdownBanner,
    TResult Function(SliderBanner value)? sliderBanner,
    required TResult orElse(),
  }) {
    if (sliderBanner != null) {
      return sliderBanner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderBannerImplToJson(
      this,
    );
  }
}

abstract class SliderBanner implements ShowCaseBanner {
  const factory SliderBanner({required final List<SliderItem> images}) =
      _$SliderBannerImpl;

  factory SliderBanner.fromJson(Map<String, dynamic> json) =
      _$SliderBannerImpl.fromJson;

  List<SliderItem> get images;
  @JsonKey(ignore: true)
  _$$SliderBannerImplCopyWith<_$SliderBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SliderItem _$SliderItemFromJson(Map<String, dynamic> json) {
  return _SliderItem.fromJson(json);
}

/// @nodoc
mixin _$SliderItem {
  String get url => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderItemCopyWith<SliderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderItemCopyWith<$Res> {
  factory $SliderItemCopyWith(
          SliderItem value, $Res Function(SliderItem) then) =
      _$SliderItemCopyWithImpl<$Res, SliderItem>;
  @useResult
  $Res call({String url, String? link});
}

/// @nodoc
class _$SliderItemCopyWithImpl<$Res, $Val extends SliderItem>
    implements $SliderItemCopyWith<$Res> {
  _$SliderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SliderItemImplCopyWith<$Res>
    implements $SliderItemCopyWith<$Res> {
  factory _$$SliderItemImplCopyWith(
          _$SliderItemImpl value, $Res Function(_$SliderItemImpl) then) =
      __$$SliderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String? link});
}

/// @nodoc
class __$$SliderItemImplCopyWithImpl<$Res>
    extends _$SliderItemCopyWithImpl<$Res, _$SliderItemImpl>
    implements _$$SliderItemImplCopyWith<$Res> {
  __$$SliderItemImplCopyWithImpl(
      _$SliderItemImpl _value, $Res Function(_$SliderItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? link = freezed,
  }) {
    return _then(_$SliderItemImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderItemImpl implements _SliderItem {
  const _$SliderItemImpl({required this.url, this.link});

  factory _$SliderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderItemImplFromJson(json);

  @override
  final String url;
  @override
  final String? link;

  @override
  String toString() {
    return 'SliderItem(url: $url, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderItemImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderItemImplCopyWith<_$SliderItemImpl> get copyWith =>
      __$$SliderItemImplCopyWithImpl<_$SliderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderItemImplToJson(
      this,
    );
  }
}

abstract class _SliderItem implements SliderItem {
  const factory _SliderItem({required final String url, final String? link}) =
      _$SliderItemImpl;

  factory _SliderItem.fromJson(Map<String, dynamic> json) =
      _$SliderItemImpl.fromJson;

  @override
  String get url;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$SliderItemImplCopyWith<_$SliderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
