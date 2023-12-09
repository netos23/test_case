import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/data/service/course_service.dart';
import 'package:test_case/domain/entity/course/course.dart';
import 'package:test_case/domain/models/cource_payment.dart';
import 'package:test_case/domain/models/order_payment.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/internal/logger.dart';
import 'package:test_case/router/app_router.dart';
import 'package:test_case/util/snack_bar_util.dart';
import 'package:test_case/util/wm_extensions.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'course_detail_page_model.dart';
import 'course_detail_page_widget.dart';

abstract interface class ICourseDetailPageWidgetModel
    implements IWidgetModel, IThemeProvider {
  EntityStateNotifier<bool> get policyController;

  EntityStateNotifier<Course> get courseState;

  Future<void> loadCourse();

  void buyCourse(int id, int price);

  void changePolicy(bool? value);

  void openTest(int courseId);
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
    with ThemeProvider
    implements ICourseDetailPageWidgetModel {
  CourseDetailPageWidgetModel(
    CourseDetailPageModel model,
    this.courseService,
  ) : super(model);

  @override
  EntityStateNotifier<Course> courseState = EntityStateNotifier();

  @override
  final EntityStateNotifier<bool> policyController = EntityStateNotifier();

  final CourseService courseService;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    loadCourse();
  }

  @override
  Future<void> loadCourse() async {
    try {
      courseState.loading();
      final test = await courseService.getCourseDetail(id: widget.courseId);
      courseState.content(test);
    } catch (e, s) {
      logger.e('Cant get tests', stackTrace: s);
      context.showSnackBar(
        'Не удалось получить информацию о курсе',
      );
    }
  }

  @override
  Future<void> buyCourse(int id, int price) async {
    policyController.loading(true);
    try {
      final order = await courseService.postOrder(
        payment: OrderPayment(course: id),
      );

      if (price != 0) {
        final url = await courseService.payCourse(
          payment: CourcePayment(id: order.id),
        );
        router.root.push(
          WebViewerRoute(
            title: 'Оплата',
            url: url.url,
            onNavigationRequest: (r) {
              if (r.url.contains(url.successUrl) ||
                  r.url.contains(url.failedUrl)) {
                router.root.pop();
              }
              return NavigationDecision.prevent;
            },
          ),
        );
        await loadCourse();
      } else {}
      policyController.content(true);
    } catch (e) {
      policyController.content(true);
    }
  }

  @override
  void dispose() {
    courseState.dispose();
    policyController.dispose();
    super.dispose();
  }

  @override
  void changePolicy(bool? value) {
    final v = value ?? false;
    policyController.content(v);
  }

  @override
  void openTest(int courseId) {
    router.push(
      TestTab(
        children: [
          DetailTestRoute(testId: courseId),
        ]
      )
    );
  }
}
