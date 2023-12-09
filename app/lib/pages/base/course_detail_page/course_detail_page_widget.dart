import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'course_detail_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CourseDetailPage module
class CourseDetailPageWidget extends ElementaryWidget<ICourseDetailPageWidgetModel> {
  const CourseDetailPageWidget( {
    Key? key,
    @queryParam required this.courseId,
    WidgetModelFactory wmFactory = defaultCourseDetailPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final int courseId;

  @override
  Widget build(ICourseDetailPageWidgetModel wm) {
    return Container();
  }
}
