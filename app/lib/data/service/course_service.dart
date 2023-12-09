import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:test_case/data/dto/pagination.dart';
import 'package:test_case/domain/entity/course/course.dart';
import 'package:test_case/domain/entity/course/course_preview.dart';
import 'package:test_case/domain/models/cource_payment.dart';
import 'package:test_case/domain/models/order.dart';
import 'package:test_case/domain/models/order_payment.dart';
import 'package:test_case/domain/models/payment_responce.dart';

part 'course_service.g.dart';

@RestApi()
abstract class CourseService {
  factory CourseService(Dio dio, {String baseUrl}) = _CourseService;

  @GET('/course/')
  Future<Pagination<CoursePreview>> getCourses({
    @Query('page') int? page,
    @Query('page_size') int? pageSize,
  });

  @GET('/course/{id}/')
  Future<Course> getCourseDetail({
    @Path() int? id,
  });

  @POST('/order/')
  Future<Order> postOrder({
    @Body() OrderPayment? payment,
  });

  @POST('/payment/pay/')
  Future<PaymentResponse> payCourse({
    @Body() CourcePayment? payment,
  });
}
