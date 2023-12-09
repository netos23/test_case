import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/entity/test/question.dart';
import 'package:test_case/domain/entity/test/test_result_response.dart';

@RoutePage()
class TestResultPageWidget extends StatelessWidget {
  const TestResultPageWidget({
    super.key,
    required this.testResultResponse,
  });

  final TestResultResponse testResultResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text('Ваш результат'),
          CircularProgressIndicator(
              value: testResultResponse.score! / testResultResponse.questions.length,
          ),
          if (testResultResponse.passed == true)
            const Text('Вы успешно прошли тест!')
          else
            const Text('Вы не прошли тест :('),
          if (testResultResponse.passed == true &&
              testResultResponse.topPercent != null)
            Text('И попали в ${testResultResponse.topPercent}'),
          const Text('Ваши ошибки:'),
          ListView.builder(
            itemCount: testResultResponse.questions.length,
            itemBuilder: (context, index) {
              QuestionWidget(
                question: testResultResponse.questions[index],
              );
            },
          ),
        ],
      ),
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
            children: [
              Text(question.question),
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
                  return Column(
                    children: [
                      Text(
                        question.question,
                      ),
                      Text(
                        question.explainAnswer ?? '',
                      ),
                      ...question.finalVariants?.map((e) {
                            if (question.type == 'text') {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(e.answer ?? ''),
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
                                  Text(
                                      'Правильный вариант - ${e.rightAnswer ?? ''}'),
                                ],
                              );
                            } else {
                              return Row(
                                children: [
                                  if (question.type == 'multiple_checked')
                                    Checkbox(
                                        value: e.check, onChanged: null),
                                  if (question.type == 'single_checked')
                                    Radio<bool>(
                                        value: e.check ?? false,
                                        groupValue: true,
                                        onChanged: null),
                                  Text(e.title ?? ''),
                                  const Spacer(),
                                  Icon(
                                    question.isCorrect == true
                                        ? Icons.check
                                        : Icons.close,
                                    color: question.isCorrect == true
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                ],
                              );
                            }
                          }) ??
                          [],
                    ],
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
