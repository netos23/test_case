import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_case/domain/models/banner.dart';

part 'course.freezed.dart';

part 'course.g.dart';

@freezed
class Course with _$Course {
  factory Course({
    String? name,
    String? picture,
    String? description,
    String? educationText,
    int? test,
    List<ShowCaseBanner>? sources,

    bool? isSelect,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}
