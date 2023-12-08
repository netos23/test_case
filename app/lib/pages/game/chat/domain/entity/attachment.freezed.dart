// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'image':
      return ImageAttachment.fromJson(json);
    case 'file':
      return FileAttachment.fromJson(json);
    case 'video':
      return VideoAttachment.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Attachment',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Attachment {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> images) image,
    required TResult Function(String url, String filename) file,
    required TResult Function(String url, String filename) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> images)? image,
    TResult? Function(String url, String filename)? file,
    TResult? Function(String url, String filename)? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> images)? image,
    TResult Function(String url, String filename)? file,
    TResult Function(String url, String filename)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageAttachment value) image,
    required TResult Function(FileAttachment value) file,
    required TResult Function(VideoAttachment value) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageAttachment value)? image,
    TResult? Function(FileAttachment value)? file,
    TResult? Function(VideoAttachment value)? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageAttachment value)? image,
    TResult Function(FileAttachment value)? file,
    TResult Function(VideoAttachment value)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) then) =
      _$AttachmentCopyWithImpl<$Res, Attachment>;
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res, $Val extends Attachment>
    implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImageAttachmentImplCopyWith<$Res> {
  factory _$$ImageAttachmentImplCopyWith(_$ImageAttachmentImpl value,
          $Res Function(_$ImageAttachmentImpl) then) =
      __$$ImageAttachmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> images});
}

/// @nodoc
class __$$ImageAttachmentImplCopyWithImpl<$Res>
    extends _$AttachmentCopyWithImpl<$Res, _$ImageAttachmentImpl>
    implements _$$ImageAttachmentImplCopyWith<$Res> {
  __$$ImageAttachmentImplCopyWithImpl(
      _$ImageAttachmentImpl _value, $Res Function(_$ImageAttachmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$ImageAttachmentImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageAttachmentImpl implements ImageAttachment {
  const _$ImageAttachmentImpl(
      {required final List<String> images, final String? $type})
      : _images = images,
        $type = $type ?? 'image';

  factory _$ImageAttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageAttachmentImplFromJson(json);

  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Attachment.image(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageAttachmentImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageAttachmentImplCopyWith<_$ImageAttachmentImpl> get copyWith =>
      __$$ImageAttachmentImplCopyWithImpl<_$ImageAttachmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> images) image,
    required TResult Function(String url, String filename) file,
    required TResult Function(String url, String filename) video,
  }) {
    return image(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> images)? image,
    TResult? Function(String url, String filename)? file,
    TResult? Function(String url, String filename)? video,
  }) {
    return image?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> images)? image,
    TResult Function(String url, String filename)? file,
    TResult Function(String url, String filename)? video,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageAttachment value) image,
    required TResult Function(FileAttachment value) file,
    required TResult Function(VideoAttachment value) video,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageAttachment value)? image,
    TResult? Function(FileAttachment value)? file,
    TResult? Function(VideoAttachment value)? video,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageAttachment value)? image,
    TResult Function(FileAttachment value)? file,
    TResult Function(VideoAttachment value)? video,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageAttachmentImplToJson(
      this,
    );
  }
}

abstract class ImageAttachment implements Attachment {
  const factory ImageAttachment({required final List<String> images}) =
      _$ImageAttachmentImpl;

  factory ImageAttachment.fromJson(Map<String, dynamic> json) =
      _$ImageAttachmentImpl.fromJson;

  List<String> get images;
  @JsonKey(ignore: true)
  _$$ImageAttachmentImplCopyWith<_$ImageAttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileAttachmentImplCopyWith<$Res> {
  factory _$$FileAttachmentImplCopyWith(_$FileAttachmentImpl value,
          $Res Function(_$FileAttachmentImpl) then) =
      __$$FileAttachmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url, String filename});
}

/// @nodoc
class __$$FileAttachmentImplCopyWithImpl<$Res>
    extends _$AttachmentCopyWithImpl<$Res, _$FileAttachmentImpl>
    implements _$$FileAttachmentImplCopyWith<$Res> {
  __$$FileAttachmentImplCopyWithImpl(
      _$FileAttachmentImpl _value, $Res Function(_$FileAttachmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? filename = null,
  }) {
    return _then(_$FileAttachmentImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileAttachmentImpl implements FileAttachment {
  const _$FileAttachmentImpl(
      {required this.url, required this.filename, final String? $type})
      : $type = $type ?? 'file';

  factory _$FileAttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileAttachmentImplFromJson(json);

  @override
  final String url;
  @override
  final String filename;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Attachment.file(url: $url, filename: $filename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileAttachmentImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, filename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileAttachmentImplCopyWith<_$FileAttachmentImpl> get copyWith =>
      __$$FileAttachmentImplCopyWithImpl<_$FileAttachmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> images) image,
    required TResult Function(String url, String filename) file,
    required TResult Function(String url, String filename) video,
  }) {
    return file(url, filename);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> images)? image,
    TResult? Function(String url, String filename)? file,
    TResult? Function(String url, String filename)? video,
  }) {
    return file?.call(url, filename);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> images)? image,
    TResult Function(String url, String filename)? file,
    TResult Function(String url, String filename)? video,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(url, filename);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageAttachment value) image,
    required TResult Function(FileAttachment value) file,
    required TResult Function(VideoAttachment value) video,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageAttachment value)? image,
    TResult? Function(FileAttachment value)? file,
    TResult? Function(VideoAttachment value)? video,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageAttachment value)? image,
    TResult Function(FileAttachment value)? file,
    TResult Function(VideoAttachment value)? video,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileAttachmentImplToJson(
      this,
    );
  }
}

abstract class FileAttachment implements Attachment {
  const factory FileAttachment(
      {required final String url,
      required final String filename}) = _$FileAttachmentImpl;

  factory FileAttachment.fromJson(Map<String, dynamic> json) =
      _$FileAttachmentImpl.fromJson;

  String get url;
  String get filename;
  @JsonKey(ignore: true)
  _$$FileAttachmentImplCopyWith<_$FileAttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoAttachmentImplCopyWith<$Res> {
  factory _$$VideoAttachmentImplCopyWith(_$VideoAttachmentImpl value,
          $Res Function(_$VideoAttachmentImpl) then) =
      __$$VideoAttachmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url, String filename});
}

/// @nodoc
class __$$VideoAttachmentImplCopyWithImpl<$Res>
    extends _$AttachmentCopyWithImpl<$Res, _$VideoAttachmentImpl>
    implements _$$VideoAttachmentImplCopyWith<$Res> {
  __$$VideoAttachmentImplCopyWithImpl(
      _$VideoAttachmentImpl _value, $Res Function(_$VideoAttachmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? filename = null,
  }) {
    return _then(_$VideoAttachmentImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoAttachmentImpl implements VideoAttachment {
  const _$VideoAttachmentImpl(
      {required this.url, required this.filename, final String? $type})
      : $type = $type ?? 'video';

  factory _$VideoAttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoAttachmentImplFromJson(json);

  @override
  final String url;
  @override
  final String filename;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Attachment.video(url: $url, filename: $filename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoAttachmentImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, filename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoAttachmentImplCopyWith<_$VideoAttachmentImpl> get copyWith =>
      __$$VideoAttachmentImplCopyWithImpl<_$VideoAttachmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> images) image,
    required TResult Function(String url, String filename) file,
    required TResult Function(String url, String filename) video,
  }) {
    return video(url, filename);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> images)? image,
    TResult? Function(String url, String filename)? file,
    TResult? Function(String url, String filename)? video,
  }) {
    return video?.call(url, filename);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> images)? image,
    TResult Function(String url, String filename)? file,
    TResult Function(String url, String filename)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(url, filename);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageAttachment value) image,
    required TResult Function(FileAttachment value) file,
    required TResult Function(VideoAttachment value) video,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageAttachment value)? image,
    TResult? Function(FileAttachment value)? file,
    TResult? Function(VideoAttachment value)? video,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageAttachment value)? image,
    TResult Function(FileAttachment value)? file,
    TResult Function(VideoAttachment value)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoAttachmentImplToJson(
      this,
    );
  }
}

abstract class VideoAttachment implements Attachment {
  const factory VideoAttachment(
      {required final String url,
      required final String filename}) = _$VideoAttachmentImpl;

  factory VideoAttachment.fromJson(Map<String, dynamic> json) =
      _$VideoAttachmentImpl.fromJson;

  String get url;
  String get filename;
  @JsonKey(ignore: true)
  _$$VideoAttachmentImplCopyWith<_$VideoAttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
