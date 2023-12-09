import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test_case/data/service/test_service.dart';
import 'package:test_case/domain/entity/test/question.dart';
import 'package:test_case/domain/entity/test/test_detail.dart';
import 'package:test_case/domain/entity/test/test_result.dart';
import 'package:test_case/domain/entity/test/variant.dart';
import 'package:test_case/domain/models/profile.dart';
import 'package:test_case/domain/use_case/profile_use_case.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/internal/logger.dart';
import 'package:test_case/router/app_router.dart';
import 'package:test_case/util/snack_bar_util.dart';
import 'package:test_case/util/wm_extensions.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'detail_test_page_model.dart';
import 'detail_test_page_widget.dart';

abstract class IDetailTestPageWidgetModel extends IWidgetModel
    implements ThemeProvider {
  BehaviorSubject<int?> get radioChooseController;

  BehaviorSubject<List<int>> get choosesController;

  BehaviorSubject<Map<int, TextEditingController>> get textsController;

  TextEditingController get testsNameController;

  EntityStateNotifier<TestDetail> get testState;

  BehaviorSubject<Profile?> get profileController;

  BehaviorSubject<int> get pageIndexController;

  ProfileUseCase get profileUseCase;

  PageController get pageController;

  void openLink(String value);

  Future<void> loadTest();

  void selectRadio(Variant variant);

  void selectVariant(Variant variant);

  void toNextPage();

  void toPrevPage();

  Future<void> toResult();
}

TestPageWidgetModel defaultDetailTestPageWidgetModelFactory(
    BuildContext context) {
  return TestPageWidgetModel(
    model: DetailTestPageModel(),
    testService: AppComponents().testService,
  );
}

// TODO: cover with documentation
/// Default widget model for ShowCasePageWidget
class TestPageWidgetModel
    extends WidgetModel<DetailTestPageWidget, DetailTestPageModel>
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
  final pageIndexController = BehaviorSubject.seeded(0);
  @override
  final textsController = BehaviorSubject();
  @override
  final radioChooseController = BehaviorSubject();
  @override
  final choosesController = BehaviorSubject();
  @override
  final profileUseCase = AppComponents().profileUseCase;

  final pageController = PageController();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    testState.addListener(() {
      final textQuestions = (testState.value?.data?.questions.where(
              (element) => element.type == 'text' && element.id != null) ??
          []);

      Map<int, TextEditingController> results = {};
      for (var question in textQuestions) {
        results.addEntries(question.variants
                ?.map((e) => MapEntry(e.id!, TextEditingController()))
                .toList() ??
            []);
      }

      textsController.add(results);
    });
    loadTest();
  }

  @override
  void selectRadio(Variant variant) {
    final id = variant.id;
    if (id == null) {
      return;
    }
    final current = radioChooseController.valueOrNull;
    if (current == id) {
      radioChooseController.add(null);
    } else {
      radioChooseController.add(id);
    }
  }

  @override
  void selectVariant(Variant variant) {
    final id = variant.id;
    if (id == null) {
      return;
    }
    List<int> current = choosesController.valueOrNull ?? [];
    if (current.contains(id)) {
      current = current.where((element) => element != id).toList();
    } else {
      current.add(id);
    }
    choosesController.add(current);
  }

  @override
  void toNextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
    pageIndexController.add((pageIndexController.valueOrNull ?? -1) + 1);
  }

  @override
  void toPrevPage() {
    pageController.previousPage(
        duration: const Duration(milliseconds: 400), curve: Curves.easeOut);
    pageIndexController.add((pageIndexController.valueOrNull ?? 1) - 1);
  }

  @override
  Future<void> loadTest() async {
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
    radioChooseController.close();
    choosesController.close();
    (textsController.valueOrNull ?? {}).forEach((key, value) {
      value.dispose();
    });
    super.dispose();
  }

  @override
  Future<void> openLink(String value) async {
    if (await canLaunchUrlString(value)) {
      launchUrlString(value);
    }
  }

  @override
  Future<void> toResult() async {
    final test = await testService.getTestDetail(id: widget.testId);
    final response = await testService.checkResult(
      testResult: TestResult(
        testId: 1,
        questions: test.questions,
      ),
    );
    if (context.mounted) {
      context.router.navigate(TestResultRoute(testResultResponse: response));
    }
  }
}
