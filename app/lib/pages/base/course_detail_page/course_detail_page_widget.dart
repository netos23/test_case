import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_case/domain/entity/course/course.dart';
import 'package:test_case/pages/base/show_case_page/show_case_page.dart';

import 'course_detail_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CourseDetailPage module
@RoutePage()
class CourseDetailPageWidget
    extends ElementaryWidget<ICourseDetailPageWidgetModel> {
  const CourseDetailPageWidget({
    Key? key,
    required this.courseId,
    WidgetModelFactory wmFactory = defaultCourseDetailPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final int courseId;

  @override
  Widget build(ICourseDetailPageWidgetModel wm) {
    final theme = wm.theme;
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 600,
          child: SafeArea(
            child: EntityStateNotifierBuilder(
              listenableEntityState: wm.courseState,
              builder: (BuildContext context, Course? course) {
                if (course == null) {
                  return const SizedBox.shrink();
                }

                final price = course.price ?? 0;

                if (!course.payed) {
                  return ListView(
                    children: [
                      AppBar(),
                      AspectRatio(
                        aspectRatio: 3 / 2,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned.fill(
                              child: CachedNetworkImage(
                                imageUrl: course.picture ?? '',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned.fill(
                              child: ColoredBox(
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                            const Positioned.fill(
                              child: Center(
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                  size: 150,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          course.name ?? '',
                          style: textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onBackground,
                          ),
                        ),
                      ),
                      Markdown(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        styleSheetTheme: MarkdownStyleSheetBaseTheme.platform,
                        styleSheet: MarkdownStyleSheet.fromTheme(
                          theme.copyWith(
                            textTheme: textTheme.copyWith(
                              displayLarge: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.displayLarge,
                                color: colorScheme.onBackground,
                              ),
                              displayMedium: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.displayMedium,
                                color: colorScheme.onBackground,
                              ),
                              displaySmall: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.displaySmall,
                                color: colorScheme.onBackground,
                              ),
                              headlineLarge: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.headlineLarge,
                                color: colorScheme.onBackground,
                              ),
                              headlineMedium: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.headlineMedium,
                                color: colorScheme.onBackground,
                              ),
                              headlineSmall: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.headlineSmall,
                                color: colorScheme.onBackground,
                              ),
                              titleLarge: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.titleLarge,
                                color: colorScheme.onBackground,
                              ),
                              titleMedium: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.titleMedium,
                                color: colorScheme.onBackground,
                              ),
                              titleSmall: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.titleSmall,
                                color: colorScheme.onBackground,
                              ),
                              bodyLarge: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.bodyLarge,
                                color: colorScheme.onBackground,
                              ),
                              bodyMedium: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.bodyMedium,
                                color: colorScheme.onBackground,
                              ),
                              bodySmall: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.bodySmall,
                                color: colorScheme.onBackground,
                              ),
                              labelLarge: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.labelLarge,
                                color: colorScheme.onBackground,
                              ),
                              labelMedium: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.labelMedium,
                                color: colorScheme.onBackground,
                              ),
                              labelSmall: GoogleFonts.jetBrainsMono(
                                textStyle: textTheme.labelSmall,
                                color: colorScheme.onBackground,
                              ),
                            ),
                          ),
                        ),
                        data: course.description,
                      ),
                      Card(
                        clipBehavior: Clip.hardEdge,
                        child: EntityStateNotifierBuilder<bool>(
                          listenableEntityState: wm.policyController,
                          loadingBuilder: (context, load) {
                            final enabled = load ?? false;
                            return _PayCard(
                              price: price,
                              enabled: enabled,
                              loading: true,
                              wm: wm,
                              id: courseId,
                            );
                          },
                          builder: (context, load) {
                            final enabled = load ?? false;
                            return _PayCard(
                              price: price,
                              enabled: enabled,
                              loading: false,
                              wm: wm,
                              id: courseId,
                            );
                          },
                        ),
                      ),
                    ],
                  );
                }

                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      pinned: true,
                      centerTitle: true,
                      expandedHeight: 300,
                      flexibleSpace: FlexibleSpaceBar(
                        title: Card(
                          elevation: 0,
                          color: colorScheme.surface,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            child: Text(
                              course.name ?? '',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        centerTitle: false,
                        titlePadding: const EdgeInsets.only(
                          left: 40,
                          bottom: 10,
                        ),
                        background: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: course.picture ?? '',
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                        child: MarkdownBody(
                          data: course.educationText ?? '',
                          fitContent: false,
                          shrinkWrap: true,
                          selectable: true,
                          styleSheetTheme: MarkdownStyleSheetBaseTheme.platform,
                          styleSheet: MarkdownStyleSheet.fromTheme(
                            theme.copyWith(
                              textTheme: textTheme.copyWith(
                                displayLarge: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.displayLarge,
                                  color: colorScheme.onBackground,
                                ),
                                displayMedium: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.displayMedium,
                                  color: colorScheme.onBackground,
                                ),
                                displaySmall: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.displaySmall,
                                  color: colorScheme.onBackground,
                                ),
                                headlineLarge: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.headlineLarge,
                                  color: colorScheme.onBackground,
                                ),
                                headlineMedium: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.headlineMedium,
                                  color: colorScheme.onBackground,
                                ),
                                headlineSmall: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.headlineSmall,
                                  color: colorScheme.onBackground,
                                ),
                                titleLarge: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.titleLarge,
                                  color: colorScheme.onBackground,
                                ),
                                titleMedium: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.titleMedium,
                                  color: colorScheme.onBackground,
                                ),
                                titleSmall: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.titleSmall,
                                  color: colorScheme.onBackground,
                                ),
                                bodyLarge: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.bodyLarge,
                                  color: colorScheme.onBackground,
                                ),
                                bodyMedium: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.bodyMedium,
                                  color: colorScheme.onBackground,
                                ),
                                bodySmall: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.bodySmall,
                                  color: colorScheme.onBackground,
                                ),
                                labelLarge: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.labelLarge,
                                  color: colorScheme.onBackground,
                                ),
                                labelMedium: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.labelMedium,
                                  color: colorScheme.onBackground,
                                ),
                                labelSmall: GoogleFonts.jetBrainsMono(
                                  textStyle: textTheme.labelSmall,
                                  color: colorScheme.onBackground,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        child: Text(
                          'Уроки',
                          style: textTheme.headlineMedium?.copyWith(
                            color: colorScheme.onBackground,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SliverList.separated(
                      itemCount: course.sources.length,
                      itemBuilder: (context, index) {
                        final source = course.sources[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: SourceWidget(
                            source: source,
                          ),
                        );
                      },
                      separatorBuilder: (_, __) => const SizedBox(height: 10),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 10,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        child: Text(
                          'Итоговый тест',
                          style: textTheme.headlineMedium?.copyWith(
                            color: colorScheme.onBackground,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          var test = course.test;
                          if (test != null) {
                            wm.openTest(test);
                          }
                        },
                        child: Center(
                          child: const Text('Пройти тест'),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _PayCard extends StatelessWidget {
  const _PayCard({
    super.key,
    required this.price,
    required this.enabled,
    required this.loading,
    required this.wm,
    required this.id,
  });

  final int id;
  final int price;
  final bool enabled;
  final bool loading;
  final ICourseDetailPageWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Column(
      children: [
        ListTile(
          title: Text(
            'Цена',
            style: textTheme.headlineSmall?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          trailing: Text(
            price == 0 ? 'Бесплатно' : '$price ₽',
            style: textTheme.labelLarge?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        CheckboxListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 0,
          ),
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          title: RichText(
            text: TextSpan(
              children: [
                const TextSpan(text: 'Принимаю '),
                TextSpan(
                  text: 'Условия исспользования',
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.primary,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const TextSpan(
                  text: ' и ',
                ),
                TextSpan(
                  text: 'Офферту.',
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.primary,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          value: enabled,
          onChanged: wm.changePolicy,
        ),
        FilledButton(
          style: FilledButton.styleFrom(
            shape: const RoundedRectangleBorder(),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: enabled && !loading
              ? () => wm.buyCourse(
                    id,
                    price,
                  )
              : null,
          child: Center(
            child: loading
                ? const CircularProgressIndicator()
                : const Text('Купить'),
          ),
        ),
      ],
    );
  }
}
