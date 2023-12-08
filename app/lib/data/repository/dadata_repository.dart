import 'package:dadata_suggestions/dadata_suggestions.dart';
import 'package:dio/dio.dart';
import 'package:test_case/domain/entity/dadata/geo_data.dart';

class GeolocationDadataRepository {
  GeolocationDadataRepository(this._dadataSuggestions);

  final DadataSuggestions _dadataSuggestions;
  static const int _defaultCitiesCount = 20;

  Future<List<GeoData>> getCities({
    String? search,
    List<String>? priorityKladrIds,
    int? countOfCities,
  }) async {
    try {
      AddressResponse? address = await _dadataSuggestions.suggest(
        AddressSuggestionRequest(
          query: search,
          count: countOfCities ?? _defaultCitiesCount,
          upperBoundary: LevelBoundry(LevelBoundryValue.city),
          lowerBoundary: LevelBoundry(LevelBoundryValue.settlement),
          locationsPriority: priorityKladrIds
              ?.map((kladrId) => AddressSuggestionPriority(kladrId))
              .toList(),
          constraints: [
            AddressSuggestionConstraint(country: "Россия"),
          ],
        ),
      );
      return address?.suggestions?.map(_mapSuggestFromCityDto).toList() ?? [];
    } on DioException catch (e) {
      throw Exception(e.response?.data['message']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<GeoData> getGeolocationByIp([String? ip]) async {
    try {
      final result = await _dadataSuggestions.geoByIp(
        AddressSuggestionRequest(ip: ip),
      );
      if (result?.location == null || (result!.location!.value ?? '').isEmpty) {
        return const GeoData(
          cityFias: '0c5b2444-70a0-4932-980c-b4dc0d3f02b5',
          name: 'Москва',
          fullName: 'г. Москва',
          lat: '13',
          lon: '13',
        );
      }
      return _mapIpResponseFromCityDto(result);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  GeoData _mapSuggestFromCityDto(AddressSuggestion? dto) {
    List<String> fullName = [];

    if (dto?.data?.region != dto?.data?.city) {
      fullName.add(dto?.data?.regionWithType ?? '');
    }
    fullName.add(dto?.data?.cityWithType ?? '');
    fullName.add(dto?.data?.settlementWithType ?? '');

    return GeoData(
      cityFias: dto?.data?.settlementFiasId ?? dto?.data?.cityFiasId ?? '',
      name: dto?.data?.settlement ?? dto?.data?.city ?? '',
      fullName: fullName.join(' ').trim(),
      lat: dto?.data?.geoLat ?? '',
      lon: dto?.data?.geoLon ?? '',
    );
  }

  GeoData _mapIpResponseFromCityDto(IpResponse? dto) {
    List<String> fullName = [];

    fullName.add(dto?.location?.data?.regionWithType ?? '');
    fullName.add(dto?.location?.data?.cityWithType ?? '');
    fullName.add(dto?.location?.data?.settlementWithType ?? '');

    return GeoData(
      cityFias: dto?.location?.data?.settlementFiasId ??
          dto?.location?.data?.cityFiasId ??
          '',
      name: dto?.location?.data?.settlement ?? dto?.location?.data?.city ?? '',
      fullName: fullName.join(' ').trim(),
      lat: dto?.location?.data?.geoLat ?? '',
      lon: dto?.location?.data?.geoLon ?? '',
    );
  }
}
