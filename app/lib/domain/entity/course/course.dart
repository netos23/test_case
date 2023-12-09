import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_case/domain/models/source.dart';

part 'course.freezed.dart';

part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required int id,
    required bool payed,
    required String name,
    String? picture,
    required String description,
    @JsonKey(name: 'educational_text') String? educationText,
    int? price,
    int? test,
    @Default(<Source>[])
    List<Source> sources,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}
