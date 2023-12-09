import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/entity/course/course.dart';
import 'package:test_case/pages/components/loading_indicator.dart';
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
                      expandedHeight: 225,
                      collapsedHeight: 125,
                      flexibleSpace: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child:
                              CachedNetworkImage(imageUrl: course?.name ?? '')),
                    ),
                    SliverToBoxAdapter(
                      child:
                          CachedNetworkImage(imageUrl: course?.picture ?? ''),
                    ),
                    SliverToBoxAdapter(
                      child: Text(course?.description ?? ''),
                    ),
                    SliverToBoxAdapter(
                      child: Text(course?.educationText ?? ''),
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
