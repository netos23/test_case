import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/entity/course/course_preview.dart';
import 'package:test_case/router/app_router.dart';
import 'package:test_case/util/pagination_builder.dart';
import 'course_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CoursePage module
@RoutePage()
class CoursePageWidget extends ElementaryWidget<ICoursePageWidgetModel> {
  const CoursePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCoursePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICoursePageWidgetModel wm) {
    return Scaffold(
      body: SafeArea(
        child: PagePaginationBuilder<CoursePreview>(
          initialPage: 1,
          paginationCallback: wm.loadPages,
          builder: (context, controller, snapshot) {
            final sources = snapshot.data;

            return ListView.separated(
              controller: controller,
              itemCount: sources?.length ?? 100,
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              itemBuilder: (context, index) {
                CoursePreview? coursePreview;

                if (sources != null) {
                  coursePreview = sources[index];
                }

                return CoursePreviewWidget(
                  course: coursePreview,
                );
              },
              separatorBuilder: (_, __) => const SizedBox(
                height: 16,
              ),
            );
          },
        ),
      ),
    );
  }
}

class CoursePreviewWidget extends StatelessWidget {
  const CoursePreviewWidget({
    super.key,
    required this.course,
  });

  final CoursePreview? course;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      clipBehavior: Clip.hardEdge,
      surfaceTintColor: Colors.white,
      child: InkWell(
        onTap: () {
          final id = course?.id;
          if (id != null) {
            context.router.navigate(CourseDetailRoute(courseId: id));
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: course?.picture ?? '',
              fit: BoxFit.cover,
              height: 150,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Text(
                course?.name ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
              child: Text(course?.description ?? ''),
            ),
          ],
        ),
      ),
    );
  }
}
