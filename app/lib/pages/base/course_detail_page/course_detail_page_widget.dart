import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/entity/course/course.dart';

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
                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      automaticallyImplyLeading: false,
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
                              course?.name ?? '',
                            ),
                          ),
                        ),
                        centerTitle: false,
                        titlePadding: const EdgeInsets.only(
                          left: 16,
                          bottom: 10,
                        ),
                        background: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: course?.picture ?? '',
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Text(course?.description ?? ''),
                    ),
                    SliverToBoxAdapter(
                      child: Text(course?.educationText ?? ''),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 1000,
                      ),
                    ),
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
