import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:test_case/data/dto/pagination.dart';
import 'package:test_case/domain/models/banner.dart';
import 'package:test_case/domain/models/source.dart';
import 'package:test_case/domain/url/banner_url.dart';

part 'banner_service.g.dart';

@RestApi()
abstract class BannerService {
  factory BannerService(Dio dio, {String baseUrl}) = _BannerService;

  @GET(BannerUrl.banners)
  Future<List<ShowCaseBanner>> getBanners();

  @GET('/banners/sources/')
  Future<Pagination<Source>> getSources({
    @Query('page') int? page,
    @Query('page_size') int? pageSize,
    @Query('search') String? search,
  });
}
