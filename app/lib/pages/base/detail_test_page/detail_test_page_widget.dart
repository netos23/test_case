import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:test_case/domain/entity/test/question.dart';
import 'package:test_case/domain/entity/test/test.dart';
import 'package:test_case/domain/entity/test/variant.dart';
import 'package:test_case/pages/components/loading_indicator.dart';
import 'package:test_case/router/app_router.dart';
import 'package:test_case/widgets_kit/image_card.dart';

import 'detail_test_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ShowCasePage module
@RoutePage()
class DetailTestPageWidget
    extends ElementaryWidget<IDetailTestPageWidgetModel> {
  const DetailTestPageWidget({
    Key? key,
    required this.testId,
    WidgetModelFactory wmFactory = defaultDetailTestPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final int testId;

  @override
  Widget build(IDetailTestPageWidgetModel wm) {
    final theme = wm.theme;
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final canPop = wm.router.canPop();

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 600,
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  expandedHeight: 225,
                  collapsedHeight: 125,
                  flexibleSpace: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: EntityStateNotifierBuilder(
                        listenableEntityState: wm.testState,
                        builder: (BuildContext context, test) {
                          return (test?.picture?.isNotEmpty == true)
                              ? ImageCard.network(
                                  leading: canPop
                                      ? const Card(child: BackButton())
                                      : null,
                                  image: test!.picture ?? '',
                                  title: test.name,
                                )
                              : ImageCard(
                                  leading: canPop
                                      ? const Card(child: BackButton())
                                      : null,
                                  image: 'assets/images/default_test.jpeg',
                                  title: 'Тест',
                                );
                        },
                      )),
                ),
                SliverToBoxAdapter(
                  child: EntityStateNotifierBuilder(
                    listenableEntityState: wm.testState,
                    loadingBuilder: (context, data) {
                      return const Center(
                        child: LoadingIndicator(),
                      );
                    },
                    builder: (context, testData) {
                      final questions = testData?.questions ?? [];
                      return ListView.separated(
                          itemBuilder: (_, index) {
                            final question = questions[index];
                            return QuestionWidget(
                              question: question,
                              theme: theme,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider();
                          },
                          itemCount: questions.length);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {super.key, required this.question, required this.theme});

  final Question question;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question.question,
            style: theme.textTheme.titleMedium,
          ),
          if (question.picture != null)
            CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: question.picture!,
              placeholder: (_, __) => Image.asset(
                'assets/images/default_test.jpeg',
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          switch (question.type) {
            'single_checked' => RadioVariantWidget(variants: question.variants),
            // 'multiple_checked' => VariantWidget(variants: question.variants),
            // 'text' => TextVariantWidget(variants: question.variants),
            _ => const SizedBox.shrink(),
          }
        ],
      ),
    );
  }
}

class RadioVariantWidget extends StatelessWidget {
  RadioVariantWidget({super.key, required this.variants});

  List<Variant> variants;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: variants.length,
      itemBuilder: (_, index){
        final variant = variants[index];
        return ChoiceChip(label: Text(variant.title), selected: false);
      }
    );
  }
}

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 90;
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 4,
          child: Image.asset(
            'assets/images/logo_large.png',
            width: width,
            height: width,
          ),
        ),
        Expanded(
          child: Text(
            'Что бы просматривать тесты\n войдите в аккаунт',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: SizedBox(
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    child: FilledButton(
                      style: theme.filledButtonTheme.style?.copyWith(
                        fixedSize: const MaterialStatePropertyAll(
                          Size.fromHeight(50),
                        ),
                      ),
                      onPressed: () {
                        context.router.push(AuthRoute());
                      },
                      child: const Center(
                        child: Text('Войти'),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Flexible(
                    flex: 3,
                    child: OutlinedButton(
                        onPressed: () => context.router.push(RegisterRoute()),
                        child: const Center(child: Text('Зарегистрироваться'))),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TestWidget extends StatelessWidget {
  const TestWidget({
    super.key,
    required this.test,
    required this.theme,
    required this.onTap,
  });

  final ValueChanged<Test> onTap;
  final Test test;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final defaultImage = Image.asset(
      'assets/images/default_test.jpeg',
      fit: BoxFit.cover,
    );
    return SizedBox(
      height: 180,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () => onTap(test),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: CachedNetworkImage(
                  height: double.infinity,
                  imageUrl: test.picture!,
                  fit: BoxFit.cover,
                  placeholder: (_, __) => defaultImage,
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        test.name,
                        style: theme.textTheme.titleMedium,
                      ),
                      const Spacer(),
                      Text(
                        test.topic,
                        style: theme.textTheme.labelLarge,
                      ),
                      Text(
                        test.description,
                        maxLines: 4,
                        style: theme.textTheme.labelLarge,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Text(
                              test.complexity ?? '',
                              style: theme.textTheme.labelLarge,
                              maxLines: 3,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              test.forAge ?? '',
                              style: theme.textTheme.labelLarge,
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Text(
                              test.createdAt ?? '',
                              style: theme.textTheme.labelLarge,
                              maxLines: 3,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              test.requiredScore?.toStringAsFixed(2) ?? '',
                              style: theme.textTheme.labelLarge,
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

MarkdownStyleSheet fromTheme(ThemeData theme) {
  assert(theme.textTheme.bodyMedium?.fontSize != null);
  final colorScheme = theme.colorScheme;
  return MarkdownStyleSheet(
    a: const TextStyle(color: Colors.blue),
    p: theme.textTheme.bodyMedium?.copyWith(
      color: colorScheme.onBackground,
    ),
    pPadding: EdgeInsets.zero,
    code: theme.textTheme.bodyMedium!.copyWith(
      backgroundColor: theme.cardTheme.color ?? theme.cardColor,
      fontFamily: 'monospace',
      fontSize: theme.textTheme.bodyMedium!.fontSize! * 0.85,
    ),
    h1: theme.textTheme.headlineSmall?.copyWith(
      color: colorScheme.onBackground,
    ),
    h1Padding: EdgeInsets.zero,
    h2: theme.textTheme.titleLarge?.copyWith(
      color: colorScheme.onBackground,
    ),
    h2Padding: EdgeInsets.zero,
    h3: theme.textTheme.titleMedium?.copyWith(
      color: colorScheme.onBackground,
    ),
    h3Padding: EdgeInsets.zero,
    h4: theme.textTheme.bodyLarge?.copyWith(
      color: colorScheme.onBackground,
    ),
    h4Padding: EdgeInsets.zero,
    h5: theme.textTheme.bodyLarge?.copyWith(
      color: colorScheme.onBackground,
    ),
    h5Padding: EdgeInsets.zero,
    h6: theme.textTheme.bodyLarge?.copyWith(
      color: colorScheme.onBackground,
    ),
    h6Padding: EdgeInsets.zero,
    em: const TextStyle(fontStyle: FontStyle.italic),
    strong: const TextStyle(fontWeight: FontWeight.bold),
    del: const TextStyle(decoration: TextDecoration.lineThrough),
    blockquote: theme.textTheme.bodyMedium?.copyWith(
      color: colorScheme.onBackground,
    ),
    img: theme.textTheme.bodyMedium?.copyWith(
      color: colorScheme.onBackground,
    ),
    checkbox: theme.textTheme.bodyMedium!.copyWith(
      color: theme.primaryColor,
    ),
    blockSpacing: 8.0,
    listIndent: 24.0,
    listBullet: theme.textTheme.bodyMedium?.copyWith(
      color: colorScheme.onBackground,
    ),
    listBulletPadding: const EdgeInsets.only(right: 4),
    tableHead: const TextStyle(fontWeight: FontWeight.w600),
    tableBody: theme.textTheme.bodyMedium?.copyWith(
      color: colorScheme.onBackground,
    ),
    tableHeadAlign: TextAlign.center,
    tableBorder: TableBorder.all(
      color: theme.dividerColor,
    ),
    tableColumnWidth: const FlexColumnWidth(),
    tableCellsPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    tableCellsDecoration: const BoxDecoration(),
    blockquotePadding: const EdgeInsets.all(8.0),
    blockquoteDecoration: BoxDecoration(
      color: Colors.blue.shade100,
      borderRadius: BorderRadius.circular(2.0),
    ),
    codeblockPadding: const EdgeInsets.all(8.0),
    codeblockDecoration: BoxDecoration(
      color: theme.cardTheme.color ?? theme.cardColor,
      borderRadius: BorderRadius.circular(2.0),
    ),
    horizontalRuleDecoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          width: 5.0,
          color: theme.dividerColor,
        ),
      ),
    ),
  );
}
