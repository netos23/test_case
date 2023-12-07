import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
import 'home_page_widget.dart';

abstract class IHomePageWidgetModel extends IWidgetModel {}

HomePageWidgetModel defaultHomePageWidgetModelFactory(BuildContext context) {
  return HomePageWidgetModel(HomePageModel());
}

// TODO: cover with documentation
/// Default widget model for HomePageWidget
class HomePageWidgetModel extends WidgetModel<HomePageWidget, HomePageModel>
    implements IHomePageWidgetModel {
  HomePageWidgetModel(HomePageModel model) : super(model);
}
