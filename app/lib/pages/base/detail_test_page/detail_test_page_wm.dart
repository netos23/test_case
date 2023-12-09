import 'package:auto_route/auto_route.dart';
import 'package:easy_debounce/easy_debounce.dart';
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
  BehaviorSubject<Map<int, int?>> get radioChooseController;

  BehaviorSubject<Map<int, List<int>>> get choosesController;

  BehaviorSubject<Map<int, TextEditingController>> get textsController;

  TextEditingController get testsNameController;

  EntityStateNotifier<TestDetail> get testState;

  BehaviorSubject<Profile?> get profileController;

  BehaviorSubject<int> get pageIndexController;

  ProfileUseCase get profileUseCase;

  PageController get pageController;

  void openLink(String value);

  Future<void> loadTest();

  void selectRadio(int id, Variant variant);

  void selectVariant(int id, Variant variant);

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

      Map<int, TextEditingController> textsResults = {};
      for (var question in textQuestions) {
        textsResults.addEntries(question.variants
                ?.map((e) => MapEntry(e.id!, TextEditingController()))
                .toList() ??
            []);
      }

      textsController.add(textsResults);

      final singleQuestions = (testState.value?.data?.questions.where(
              (element) =>
                  element.type == 'single_checked' && element.id != null) ??
          []);

      Map<int, int?> singleResults = {};
      singleResults.addEntries(
          singleQuestions.map((e) => MapEntry(e.id!, null)).toList());
      radioChooseController.add(singleResults);

      final multipleQuestions = (testState.value?.data?.questions.where(
              (element) =>
                  element.type == 'multiple_checked' && element.id != null) ??
          []);
      Map<int, List<int>> multipleResults = {};
      multipleResults.addEntries(
          multipleQuestions.map((e) => MapEntry(e.id!, <int>[])).toList());
      choosesController.add(multipleResults);
    });
    loadTest();
  }

  @override
  void selectRadio(int id, Variant variant) {
    final variantId = variant.id;
    if (variantId == null) {
      return;
    }
    final current = radioChooseController.valueOrNull ?? {};
    if (current[id] == variantId) {
      current[id] = null;
    } else {
      current[id] = variantId;
    }
    radioChooseController.add(current);
  }

  @override
  void selectVariant(int id, Variant variant) {
    final variantId = variant.id;
    if (variantId == null) {
      return;
    }
    Map<int, List<int>> current = choosesController.valueOrNull ?? {};
    if (current[id]?.contains(variantId) ?? false) {
      final withoutCurrentId =
          (current[id]?.where((element) => element != id) ?? []).toList();
      current[id] = withoutCurrentId;
    } else {
      current[id]?.add(variantId);
    }
    choosesController.add(current);
  }

  @override
  Future<void> toNextPage() async {
    EasyDebounce.debounce('change_page', const Duration(milliseconds: 400),
        () async {
      await pageController.nextPage(
          duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
      pageIndexController.add((pageIndexController.valueOrNull ?? -1) + 1);
    });
  }

  @override
  Future<void> toPrevPage() async {
    EasyDebounce.debounce('change_page', const Duration(milliseconds: 400),
        () async {
      await pageController.previousPage(
          duration: const Duration(milliseconds: 400), curve: Curves.easeOut);
      pageIndexController.add((pageIndexController.valueOrNull ?? 1) - 1);
    });
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
    final test = testState.value?.data;

    final request = TestResult(
      testId: test?.id ?? -1,
      questions: (test?.questions ?? [])
          .map(
            (question) => Question(
                id: question.id,
                question: question.question,
                variants: (question.variants ?? [])
                    .map(
                      (variant) => Variant(
                        id: variant.id,
                        checked: (radioChooseController.valueOrNull ??
                                    {})[question.id] ==
                                variant.id ||
                            (choosesController.valueOrNull ?? {})[question.id]
                                    ?.contains(variant.id) ==
                                true,
                        answer: (textsController.valueOrNull ?? {})[variant.id]
                            ?.text,
                      ),
                    )
                    .toList()),
          )
          .toList(),
    );

    List<Variant> variants = [];
    request.questions.forEach((question) {
     final vars =  question.variants ?? [];
      variants.addAll(vars);
    });

    if (variants.where((element) => element.check == null && !(element.answer?.isNotEmpty == true)).isNotEmpty){
      final response = await testService.checkResult(
        testResult: request,
      );
      if (context.mounted) {
        context.router.navigate(TestResultRoute(testResultResponse: response));
      }
    }else {
      context.showErrorSnackBar('Убедитесь, что все поля заполнены');
    }

  }
}
