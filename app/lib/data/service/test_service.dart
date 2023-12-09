import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:test_case/domain/entity/test/test.dart';
import 'package:test_case/domain/entity/test/test_detail.dart';

part 'test_service.g.dart';

@RestApi()
abstract class TestService {
  factory TestService(Dio dio, {String baseUrl}) = _TestService;

  @GET('/istests/detail/{id}/')
  Future<TestDetail> getTestDetail({
    @queryParam int? id,
  });

  @GET('/istests/tests/')
  Future<List<Test>> getTests();
}