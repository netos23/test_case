import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/data/service/course_service.dart';
import 'package:test_case/domain/entity/course/course.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/internal/logger.dart';
import 'package:test_case/util/snack_bar_util.dart';
import 'course_detail_page_model.dart';
import 'course_detail_page_widget.dart';

abstract interface class ICourseDetailPageWidgetModel implements IWidgetModel {
  EntityStateNotifier<Course> get courseState;

  Future<void> loadCourse();
}

CourseDetailPageWidgetModel defaultCourseDetailPageWidgetModelFactory(
    BuildContext context) {
  return CourseDetailPageWidgetModel(
      CourseDetailPageModel(), AppComponents().courseService);
}

// TODO: cover with documentation
/// Default widget model for CourseDetailPageWidget
class CourseDetailPageWidgetModel
    extends WidgetModel<CourseDetailPageWidget, CourseDetailPageModel>
    implements ICourseDetailPageWidgetModel {
  CourseDetailPageWidgetModel(
    CourseDetailPageModel model,
    this.courseService,
  ) : super(model);

  final CourseService courseService;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    loadCourse();
  }

  @override
  // TODO: implement courseState
  EntityStateNotifier<Course> courseState = EntityStateNotifier();

  @override
  Future<void> loadCourse() async {
    try {
      courseState.loading();
      final test = await courseService.getCourseDetail(id: widget.courseId);
      courseState.content(test);
    } catch (e) {
      logger.e('Cant get tests');
      context.showSnackBar(
        'Не удалось получить информацию о курсе',
      );
    }
  }
}
