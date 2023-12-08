import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_data.freezed.dart';

part 'geo_data.g.dart';

@freezed
class GeoData with _$GeoData {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory GeoData({
    @JsonKey(name: 'city_fias') required String cityFias,
    required String name,
    required String fullName,
    required String lat,
    required String lon,
  }) = _GeoData;

  factory GeoData.fromJson(Map<String, dynamic> json) =>
      _$GeoDataFromJson(json);
}
