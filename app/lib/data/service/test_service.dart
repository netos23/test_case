import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:test_case/domain/entity/test/recommends.dart';
import 'package:test_case/domain/entity/test/test.dart';
import 'package:test_case/domain/entity/test/test_detail.dart';
import 'package:test_case/domain/entity/test/test_result.dart';
import 'package:test_case/domain/entity/test/test_result_response.dart';

part 'test_service.g.dart';

@RestApi()
abstract class TestService {
  factory TestService(Dio dio, {String baseUrl}) = _TestService;

  @GET('/istests/detail/{id}/')
  Future<TestDetail> getTestDetail({
    @Path() int? id,
  });

  @GET('/istests/tests/')
  Future<List<Test>> getTests();

  @POST('/istests/check_result/')
  Future<TestResultResponse> checkResult({
    @Body() required TestResult testResult,
  });


  // я так чуствую
  @GET('/recommends/')
  Future<Recommends> getRecommends();
}
