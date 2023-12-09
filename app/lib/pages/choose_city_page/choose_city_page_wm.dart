import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_case/data/repository/dadata_repository.dart';
import 'package:test_case/domain/entity/dadata/geo_data.dart';
import 'package:rxdart/subjects.dart';
import 'package:test_case/domain/models/profile.dart';
import 'package:test_case/domain/use_case/profile_use_case.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/util/wm_extensions.dart';
import 'package:easy_debounce/easy_debounce.dart';

import 'choose_city_page_model.dart';
import 'choose_city_page_widget.dart';

abstract class IChooseCityWidgetModel extends IWidgetModel
    implements IThemeProvider {
  ProfileUseCase get profileUseCase;

  TextEditingController get cityController;

  GeolocationDadataRepository get dadataRepository;

  BehaviorSubject<List<GeoData>> get geoLocationController;

  Future<void> onAutocomplete();
}

ChooseCityPageWidgetModel defaultChooseCityPageWidgetModelFactory(
    BuildContext context) {
  return ChooseCityPageWidgetModel(ChooseCityPageModel());
}

// TODO: cover with documentation
/// Default widget model for EditProfilePageWidget
class ChooseCityPageWidgetModel
    extends WidgetModel<ChooseCityPageWidget, ChooseCityPageModel>
    with ThemeProvider
    implements IChooseCityWidgetModel {
  ChooseCityPageWidgetModel(ChooseCityPageModel model) : super(model);

  @override
  final cityController = TextEditingController();

  @override
  GeolocationDadataRepository dadataRepository =
      AppComponents().dadataRepository;

  @override
  BehaviorSubject<Profile?> profileController = BehaviorSubject<Profile?>();

  @override
  BehaviorSubject<List<GeoData>> geoLocationController =
      BehaviorSubject<List<GeoData>>();

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    cityController.text = '';

    cityController.addListener(onAutocomplete);
  }

  @override
  void dispose() {
    cityController.removeListener(onAutocomplete);
    cityController.clear();
    profileController.close();
    super.dispose();
  }

  @override
  ProfileUseCase profileUseCase = AppComponents().profileUseCase;

  @override
  Future<void> onAutocomplete() async {
    try {
      EasyDebounce.debounce('dadata', const Duration(milliseconds: 400),
          () async {
        final List<GeoData> request =
            await dadataRepository.getCities(search: cityController.text);
        if (request.isNotEmpty) {
          geoLocationController.add(request);
        }
      });
    } on DioException catch (_, e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
