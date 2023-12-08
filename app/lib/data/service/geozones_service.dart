import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:test_case/domain/entity/geozones/geozone.dart';

part 'geozones_service.g.dart';

@RestApi()
abstract class GeozonesService {
  factory GeozonesService(Dio dio, {String baseUrl}) = _GeozonesService;

  @GET('/geozones/deprecated/')
  Future<List<Geozone>> getDeprecated();

  @GET('/geozones/zones/')
  Future<List<Geozone>> getZones();

  @POST('/geozones/deprecated/')
  Future<List<Geozone>> postDeprecated({
    @Body() required List<Geozone> request,
  });

  @POST('/geozones/zones/')
  Future<Geozone> postZones({
    @Body() required Geozone request,
  });
}
