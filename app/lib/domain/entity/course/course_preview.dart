import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_preview.freezed.dart';

part 'course_preview.g.dart';

@freezed
class CoursePreview with _$CoursePreview {
  factory CoursePreview({
    int? id,
    String? name,
    String? picture,
    String? description,
  }) = _CoursePreview;

  factory CoursePreview.fromJson(Map<String, dynamic> json) => _$CoursePreviewFromJson(json);
}
