import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart' hide TestRoute;
import 'package:flutter/material.dart';
import 'package:test_case/domain/entity/test/question.dart';
import 'package:test_case/domain/entity/test/recommends.dart';
import 'package:test_case/domain/entity/test/test_result_response.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/pages/base/show_case_page/show_case_page_widget.dart';

import '../../../router/app_router.dart';

@RoutePage()
class TestResultPageWidget extends StatefulWidget {
  const TestResultPageWidget({
    super.key,
    required this.testResultResponse,
  });

  final TestResultResponse testResultResponse;

  @override
  State<TestResultPageWidget> createState() => _TestResultPageWidgetState();
}

class _TestResultPageWidgetState extends State<TestResultPageWidget> {
  Future<Recommends>? recommends;

  @override
  void initState() {
    super.initState();
    recommends = AppComponents().testService.getRecommends();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {
          context.router.navigate(TestRoute());
        },
        child: const Icon(Icons.house),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            const Center(
              child: Text(
                'Ваш результат',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Center(
              child: SizedBox(
                height: 250,
                width: 250,
                child: CircularProgressIndicator(
                  value: widget.testResultResponse.correctAmount! /
                      widget.testResultResponse.questions.length,
                  strokeWidth: 30,
                  color: widget.testResultResponse.passed == true
                      ? Colors.green
                      : Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            if (widget.testResultResponse.passed == true)
              const Center(
                  child: Text(
                'Вы успешно прошли тест!',
                style: TextStyle(fontSize: 24),
              ))
            else
              const Center(
                child: Text(
                  'Вы не прошли тест :(',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            if (widget.testResultResponse.passed == true &&
                widget.testResultResponse.topPercent != null)
              Center(
                child: Text(
                  'И попали в ${widget.testResultResponse.topPercent}%',
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            const Text(
              'Ваши ошибки:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.testResultResponse.questions.length,
              itemBuilder: (context, index) {
                return QuestionWidget(
                  question: widget.testResultResponse.questions[index],
                );
              },
            ),
            const SizedBox(
              height: 32,
            ),
            FutureBuilder(
              future: recommends,
              builder: (context, snapshot) {
                final data = snapshot.data;
                if (data == null) {
                  return Container();
                }
                return Column(
                  children: [
                    const Text(
                      'Статьи, которые помогут вам стать профессионалом в кибербезопасности!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ...?data.sources?.map((e) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: SourceWidget(
                          source: e,
                        ),
                      );
                    }),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendsWidget extends StatefulWidget {
  const RecommendsWidget({super.key});

  @override
  State<RecommendsWidget> createState() => _RecommendsWidgetState();
}

class _RecommendsWidgetState extends State<RecommendsWidget> {
  Future<Recommends>? recommends;

  @override
  void initState() {
    super.initState();
    recommends = AppComponents().testService.getRecommends();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: recommends,
      builder: (context, snapshot) {
        final data = snapshot.data;
        if (data == null) {
          return Container();
        }
        return Column(
          children: [
            ...?data.sources?.map((e) {
              return SourceWidget(
                source: e,
              );
            })
          ],
        );
      },
    );
  }
}

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                question.isCorrect == true ? Icons.check : Icons.close,
                color: question.isCorrect == true ? Colors.green : Colors.red,
              )
            ],
          ),
          ExpansionTile(
            title: Text(
              question.question,
              maxLines: 2,
            ),
            children: [
              Builder(
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ...question.finalVariants?.map((e) {
                              if (question.type == 'text') {
                                return Center(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            e.answer ?? '',
                                            style: const TextStyle(
                                              fontSize: 24,
                                            ),
                                          ),
                                          Icon(
                                            question.isCorrect == true
                                                ? Icons.check
                                                : Icons.close,
                                            color: question.isCorrect == true
                                                ? Colors.green
                                                : Colors.red,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        'Правильный вариант - ${e.rightAnswer ?? ''}',
                                        style: const TextStyle(
                                          fontSize: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                return Row(
                                  children: [
                                    if (question.type == 'multiple_checked')
                                      Checkbox(
                                          value: e.checked, onChanged: null),
                                    if (question.type == 'single_checked')
                                      Radio<bool>(
                                          value: e.checked ?? false,
                                          groupValue: true,
                                          onChanged: null),
                                    Text(e.title ?? ''),
                                    const Spacer(),
                                    if (e.checked == true)
                                      Icon(
                                        e.isRight == true
                                            ? Icons.check
                                            : Icons.close,
                                        color: e.isRight == true
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                  ],
                                );
                              }
                            }) ??
                            [],
                        Text(
                          question.explainAnswer ?? '',
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
