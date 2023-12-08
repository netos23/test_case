import 'dart:async';

import 'package:dio/dio.dart';
import 'package:test_case/domain/models/banner.dart';
import 'package:test_case/domain/url/banner_url.dart';
import 'package:retrofit/http.dart';

part 'banner_service.g.dart';

@RestApi()
abstract class BannerService {
  factory BannerService(Dio dio, {String baseUrl}) = _BannerService;

  @GET(BannerUrl.banners)
  Future<List<ShowCaseBanner>> getBanners();
}
