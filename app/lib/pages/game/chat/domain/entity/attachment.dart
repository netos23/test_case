import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment.freezed.dart';

part 'attachment.g.dart';

@freezed
sealed class Attachment with _$Attachment {
  const factory Attachment.image({
    required List<String> images,
  }) = ImageAttachment;

  const factory Attachment.file({
    required String url,
    required String filename,
  }) = FileAttachment;


  const factory Attachment.video({
    required String url,
    required String filename,
  }) = VideoAttachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
}
