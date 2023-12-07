import 'package:freezed_annotation/freezed_annotation.dart';

part 'geozone.freezed.dart';

part 'geozone.g.dart';

@Freezed()
class Geozone with _$Geozone {
  @JsonSerializable(includeIfNull: false)
  factory Geozone({
    int? id,
    required String name,
    required List<List<List<double>>> wkt,
  }) = _Geozone;

  factory Geozone.fromJson(Map<String, dynamic> json) =>
      _$GeozoneFromJson(json);
}
