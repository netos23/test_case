import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:test_case/domain/models/top_user.dart';
import 'package:test_case/domain/models/user_level.dart';
import 'package:test_case/domain/models/user_stat.dart';

part 'stats_service.g.dart';

@RestApi()
abstract class StatsService {
  factory StatsService(Dio dio, {String baseUrl}) = _StatsService;

  @GET('/statistics/top_users/')
  Future<List<TopUser>> getTopUsers();

  @GET('/statistics/user_stats/')
  Future<UserStat> getUserStats();

  @GET('/statistics/levels/')
  Future<UserLevel> getUserLevel();
}
