import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/data/service/banner_service.dart';
import 'package:test_case/domain/models/banner.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/internal/logger.dart';
import 'package:test_case/util/snack_bar_util.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'show_case_page_model.dart';
import 'show_case_page_widget.dart';

abstract class IShowCasePageWidgetModel extends IWidgetModel {
  EntityStateNotifier<List<ShowCaseBanner>> get bannersState;

  void openLink(String value);

  Future<void> loadBanners();
}

ShowCasePageWidgetModel defaultShowCasePageWidgetModelFactory(
    BuildContext context) {
  return ShowCasePageWidgetModel(
    model: ShowCasePageModel(),
    bannerService: AppComponents().bannerService,
  );
}

// TODO: cover with documentation
/// Default widget model for ShowCasePageWidget
class ShowCasePageWidgetModel
    extends WidgetModel<ShowCasePageWidget, ShowCasePageModel>
    implements IShowCasePageWidgetModel {
  ShowCasePageWidgetModel({
    required ShowCasePageModel model,
    required this.bannerService,
  }) : super(model);

  @override
  final bannersState = EntityStateNotifier();
  final BannerService bannerService;

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    loadBanners();
  }

  @override
  Future<void> loadBanners() async {
    try {
      bannersState.loading();
      final banners = await bannerService.getBanners();
      bannersState.content(banners);
    } catch (e, s) {
      logger.e('Cant get banner');
      context.showSnackBar(
        'Не удалось получить информацию о баннерах',
      );
    }
  }

  @override
  void dispose() {
    bannersState.dispose();
    super.dispose();
  }

  @override
  Future<void> openLink(String value) async {
    if (await canLaunchUrlString(value)) {
      launchUrlString(value);
    }
  }
}
