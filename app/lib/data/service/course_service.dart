import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:test_case/data/dto/pagination.dart';
import 'package:test_case/domain/entity/course/course.dart';
import 'package:test_case/domain/entity/course/course_preview.dart';
import 'package:test_case/domain/entity/test/test.dart';
import 'package:test_case/domain/entity/test/test_detail.dart';

part 'course_service.g.dart';

@RestApi()
abstract class CourseService {
  factory CourseService(Dio dio, {String baseUrl}) = _CourseService;



  @GET('/course/')
  Future<Pagination<CoursePreview>> getCourses({
    @Query('page')int? page,
    @Query('page_size') int? pageSize,
  });


  @GET('/course//{id}/')
  Future<Course> getCourseDetail({
    @queryParam int? id,
  });
}
