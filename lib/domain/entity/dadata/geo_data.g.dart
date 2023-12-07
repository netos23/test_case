// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeoDataImpl _$$GeoDataImplFromJson(Map<String, dynamic> json) =>
    _$GeoDataImpl(
      cityFias: json['city_fias'] as String,
      name: json['name'] as String,
      fullName: json['fullName'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
    );

Map<String, dynamic> _$$GeoDataImplToJson(_$GeoDataImpl instance) =>
    <String, dynamic>{
      'city_fias': instance.cityFias,
      'name': instance.name,
      'fullName': instance.fullName,
      'lat': instance.lat,
      'lon': instance.lon,
    };
