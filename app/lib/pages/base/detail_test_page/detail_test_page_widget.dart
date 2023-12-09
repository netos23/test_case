import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:test_case/domain/entity/test/question.dart';
import 'package:test_case/domain/entity/test/test.dart';
import 'package:test_case/domain/entity/test/test_detail.dart';
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
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 600,
            height: 700,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    expandedHeight: 200,
                    collapsedHeight: 125,
                    flexibleSpace: SizedBox(
                      height: 200,
                      child: EntityStateNotifierBuilder(
                        listenableEntityState: wm.testState,
                        builder: (BuildContext context, test) {
                          return (test?.picture?.isNotEmpty == true)
                              ? ImageCard.network(
                                  leading: canPop
                                      ? const Card(child: BackButton())
                                      : null,
                                  image: test?.picture ?? '',
                                  title: test?.name ?? 'Тест',
                                )
                              : ImageCard(
                                  leading: canPop
                                      ? const Card(child: BackButton())
                                      : null,
                                  image: 'assets/images/default_test.jpeg',
                                  title: test?.name ?? 'Тест',
                                );
                        },
                      ),
                    ),
                  ),
                ];
              },
              body: EntityStateNotifierBuilder(
                listenableEntityState: wm.testState,
                loadingBuilder: (context, data) {
                  return const Center(
                    child: LoadingIndicator(),
                  );
                },
                builder: (BuildContext context, TestDetail? data) {
                  final questions = data?.questions ?? [];
                  return Stack(
                    children: [
                      PageView(
                        controller: wm.pageController,
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        children: questions
                            .map((e) => QuestionWidget(
                                  question: e,
                                  theme: theme,
                                  model: wm,
                                ))
                            .toList(),
                      ),
                      Positioned(
                        bottom: 16,
                        right: 8,
                        child: SizedBox(
                          height: 40,
                          child: StreamBuilder<int>(
                              stream: wm.pageIndexController,
                              builder: (context, snapshot) {
                                return AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 400),
                                  child: (snapshot.hasData &&
                                          snapshot.data! + 1 !=
                                              (wm.testState.value?.data
                                                  ?.questions.length))
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            if (wm.pageController.initialPage !=
                                                snapshot.data)
                                              FloatingActionButton(
                                                key: UniqueKey(),
                                                onPressed: wm.toPrevPage,
                                                child: const Icon(Icons
                                                    .navigate_before_outlined),
                                              ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            FloatingActionButton(
                                              onPressed: wm.toNextPage,
                                              child: const Icon(
                                                  Icons.navigate_next_outlined),
                                            ),
                                          ],
                                        )
                                      : SizedBox(
                                          width: 80,
                                          child: FloatingActionButton(
                                            onPressed: () {
                                              wm.toResult();
                                            },
                                            child: const Text('Отправить'),
                                          ),
                                        ),
                                );
                              }),
                        ),
                      )
                    ],
                  );
                },
                // EntityStateNotifierBuilder(
                //   listenableEntityState: wm.testState,
                //   loadingBuilder: (context, data) {
                //     return const Center(
                //       child: LoadingIndicator(),
                //     );
                //   },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
    required this.question,
    required this.theme,
    required this.model,
  });

  final Question question;
  final ThemeData theme;
  final IDetailTestPageWidgetModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              question.question,
              style: theme.textTheme.titleSmall
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          if (question.picture != null)
            CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: question.picture!,
              placeholder: (_, __) => Image.asset(
                'assets/images/default_test.jpeg',
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
          switch (question.type) {
            'multiple_checked' => VariantWidget(
                variants: question.variants ?? [],
                model: model,
              ),
            'single_checked' => RadioVariantWidget(
                variants: question.variants ?? [],
                model: model,
              ),
            'text' => TextVariantWidget(
                variants: question.variants ?? [],
                model: model,
                theme: theme,
              ),
            _ => const SizedBox.shrink(),
          },
        ],
      ),
    );
  }
}

class TextVariantWidget extends StatelessWidget {
  const TextVariantWidget({
    super.key,
    required this.variants,
    required this.model,
    required this.theme,
  });

  final IDetailTestPageWidgetModel model;
  final ThemeData theme;

  final List<Variant> variants;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: variants.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        final variant = variants[index];
        return StreamBuilder<Map<int, TextEditingController>>(
          stream: model.textsController,
          initialData: const {},
          builder: (context, snapshot) {
            final controller = snapshot.hasData
                ? snapshot.data![variant.id]
                : TextEditingController();
            return TextField(
              controller: controller,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onBackground,
                overflow: TextOverflow.ellipsis,
              ),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            );
          },
        );
      },
    );
  }
}

class VariantWidget extends StatelessWidget {
  const VariantWidget({
    super.key,
    required this.variants,
    required this.model,
  });

  final IDetailTestPageWidgetModel model;

  final List<Variant> variants;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      cacheExtent: double.maxFinite,
      itemCount: variants.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        final variant = variants[index];
        return StreamBuilder<List<int>>(
          stream: model.choosesController,
          builder: (context, snapshot) {
            return CheckboxListTile(
              title: Text(variant.title),
              value: (model.choosesController.valueOrNull ?? [])
                  .contains(variant.id),
              onChanged: (_) => model.selectVariant(variant),
            );
          },
        );
      },
    );
  }
}

class RadioVariantWidget extends StatelessWidget {
  const RadioVariantWidget({
    super.key,
    required this.variants,
    required this.model,
  });

  final IDetailTestPageWidgetModel model;

  final List<Variant> variants;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: variants.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final variant = variants[index];
          return StreamBuilder<int?>(
            stream: model.radioChooseController,
            builder: (context, snapshot) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.8),
                child: ChoiceChip(
                    label: Text(variant.title),
                    onSelected: (_) => model.selectRadio(variant),
                    selected:
                        model.radioChooseController.valueOrNull == variant.id),
              );
            },
          );
        },
      ),
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
