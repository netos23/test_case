import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/data/service/course_service.dart';
import 'package:test_case/domain/entity/course/course_preview.dart';
import 'package:test_case/internal/app_components.dart';
import 'course_page_model.dart';
import 'course_page_widget.dart';

abstract interface class ICoursePageWidgetModel implements IWidgetModel {
  EntityStateNotifier<List<CoursePreview>> get coursePreview;


  Future<(List<CoursePreview>, bool)> loadPages(int page);
}

CoursePageWidgetModel defaultCoursePageWidgetModelFactory(
    BuildContext context) {
  return CoursePageWidgetModel(CoursePageModel(), AppComponents().courseService);
}

/// Default widget model for CoursePageWidget
class CoursePageWidgetModel
    extends WidgetModel<CoursePageWidget, CoursePageModel>
    implements ICoursePageWidgetModel {
  CoursePageWidgetModel(
    CoursePageModel model,
    this.courseService,
  ) : super(model);

  final CourseService courseService;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
  }

  @override
  final coursePreview = EntityStateNotifier();


  @override
  Future<(List<CoursePreview>, bool)> loadPages(int page) async {
    try {
      final pagination = await courseService.getCourses(
        page: page,
      );

      return (pagination.results, pagination.next != null);
    } catch (e) {
      debugPrint(e.toString());
    }
    return (<CoursePreview>[], false);
  }

}
