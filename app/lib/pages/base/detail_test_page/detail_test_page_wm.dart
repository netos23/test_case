import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test_case/data/service/test_service.dart';
import 'package:test_case/domain/entity/test/test_detail.dart';
import 'package:test_case/domain/models/profile.dart';
import 'package:test_case/domain/use_case/profile_use_case.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/internal/logger.dart';
import 'package:test_case/util/snack_bar_util.dart';
import 'package:test_case/util/wm_extensions.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'detail_test_page_model.dart';
import 'detail_test_page_widget.dart';

abstract class IDetailTestPageWidgetModel extends IWidgetModel
    implements ThemeProvider {
  TextEditingController get testsNameController;

  EntityStateNotifier<TestDetail> get testState;

  BehaviorSubject<Profile?> get profileController;

  ProfileUseCase get profileUseCase;

  void openLink(String value);

  Future<void> loadTests();
}

TestPageWidgetModel defaultDetailTestPageWidgetModelFactory(BuildContext context) {
  return TestPageWidgetModel(
    model: DetailTestPageModel(),
    testService: AppComponents().testService,
  );
}

// TODO: cover with documentation
/// Default widget model for ShowCasePageWidget
class TestPageWidgetModel extends WidgetModel<DetailTestPageWidget, DetailTestPageModel>
    with ThemeProvider
    implements IDetailTestPageWidgetModel {
  TestPageWidgetModel({
    required DetailTestPageModel model,
    required this.testService,
  }) : super(model);

  final TestService testService;
  @override
  final testState = EntityStateNotifier();
  @override
  final testsNameController = TextEditingController();
  @override
  final profileController = BehaviorSubject();
  @override
  final profileUseCase = AppComponents().profileUseCase;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    loadTests();
  }

  @override
  Future<void> loadTests() async {
    try {
      testState.loading();
      final test = await testService.getTestDetail(id: widget.testId);
      testState.content(test);
    } catch (e) {
      logger.e('Cant get tests');
      context.showSnackBar(
        'Не удалось получить информацию о тестах',
      );
    }
  }

  @override
  void dispose() {
    testsNameController;
    testState.dispose();
    super.dispose();
  }

  @override
  Future<void> openLink(String value) async {
    if (await canLaunchUrlString(value)) {
      launchUrlString(value);
    }
  }
}
