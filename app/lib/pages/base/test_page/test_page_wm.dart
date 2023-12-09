import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test_case/data/service/banner_service.dart';
import 'package:test_case/data/service/test_service.dart';
import 'package:test_case/domain/entity/test/test.dart';
import 'package:test_case/domain/models/banner.dart';
import 'package:test_case/domain/models/profile.dart';
import 'package:test_case/domain/use_case/profile_use_case.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/internal/logger.dart';
import 'package:test_case/router/app_router.dart';
import 'package:test_case/util/snack_bar_util.dart';
import 'package:test_case/util/wm_extensions.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'test_page_model.dart';
import 'test_page_widget.dart';

abstract class ITestPageWidgetModel extends IWidgetModel
    implements ThemeProvider {
  EntityStateNotifier<List<ShowCaseBanner>> get bannersState;

  TextEditingController get testsNameController;

  EntityStateNotifier<List<Test>> get testsState;

  BehaviorSubject<Profile?> get profileController;

  ProfileUseCase get profileUseCase;

  void openLink(String value);

  Future<void> loadTests();

  void toTestDetail(Test value);
}

TestPageWidgetModel defaultTestPageWidgetModelFactory(BuildContext context) {
  return TestPageWidgetModel(
    model: TestPageModel(),
    bannerService: AppComponents().bannerService,
    testService: AppComponents().testService,
  );
}

// TODO: cover with documentation
/// Default widget model for ShowCasePageWidget
class TestPageWidgetModel extends WidgetModel<TestPageWidget, TestPageModel>
    with ThemeProvider
    implements ITestPageWidgetModel {
  TestPageWidgetModel({
    required TestPageModel model,
    required this.bannerService,
    required this.testService,
  }) : super(model);

  @override
  final bannersState = EntityStateNotifier();
  final BannerService bannerService;
  final TestService testService;
  @override
  final testsState = EntityStateNotifier();
  @override
  final testsNameController = TextEditingController();
  @override
  final profileController = BehaviorSubject();
  @override
  final profileUseCase = AppComponents().profileUseCase;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    if (profileUseCase.profile.valueOrNull != null) {
      profileController.add(profileUseCase.profile.value);
    }
    profileUseCase.profile.stream.listen((event) {
      profileController.add(event);
      loadTests();
    });

    if (profileUseCase.profile.valueOrNull == null) {
      profileUseCase.loadProfile();
    }
    // loadTests();
  }

  @override
  Future<void> loadTests() async {
    try {
      testsState.loading();
      final tests = await testService.getTests();
      testsState.content(tests);
    } catch (e) {
      logger.e('Cant get tests');
      context.showSnackBar(
        'Не удалось получить информацию о тестах',
      );
    }
  }

  @override
  void toTestDetail(Test value){
    router.push(DetailTestRoute(testId: value.id),);
  }


  @override
  void dispose() {
    bannersState.dispose();
    testsNameController;
    testsState.dispose();
    super.dispose();
  }

  @override
  Future<void> openLink(String value) async {
    if (await canLaunchUrlString(value)) {
      launchUrlString(value);
    }
  }
}
