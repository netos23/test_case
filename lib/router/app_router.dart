import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:hotel_writer/domain/models/profile.dart';
import 'package:hotel_writer/pages/base/auth_code_page/auth_code_page_widget.dart';
import 'package:hotel_writer/pages/base/auth_code_page/auth_code_page_wm.dart';
import 'package:hotel_writer/pages/base/auth_page/auth_page_widget.dart';
import 'package:hotel_writer/pages/base/auth_page/auth_page_wm.dart';
import 'package:hotel_writer/pages/base/edit_profile_page/edit_profile_page_widget.dart';
import 'package:hotel_writer/pages/base/edit_profile_page/edit_profile_page_wm.dart';
import 'package:hotel_writer/pages/base/home_page/home_page_wm.dart';
import 'package:hotel_writer/pages/base/profile_page/profile_page_widget.dart';
import 'package:hotel_writer/pages/base/profile_page/profile_page_wm.dart';
import 'package:hotel_writer/pages/base/register_page/register_page_widget.dart';
import 'package:hotel_writer/pages/base/register_page/register_page_wm.dart';
import 'package:hotel_writer/pages/choose_city_page/choose_city_page.dart';
import 'package:hotel_writer/pages/web_view/web_view_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../pages/base/home_page/home_page_widget.dart';
import '../pages/base/show_case_page/show_case_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "PageWidget,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WebViewerRoute.page),
        AutoRoute(
          page: AuthRoute.page,
        ),
        AutoRoute(page: AuthCodeRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(
          page: ChooseCityRoute.page,
        ),
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: ShowCaseTab.page,
              children: [
                AutoRoute(
                  page: ShowCaseRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: UserProfileTab.page,
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  page: EditProfileRoute.page,
                ),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'ShowCaseTab')
class ShowCaseTabPage extends AutoRouter {
  const ShowCaseTabPage({super.key});
}

@RoutePage(name: 'UserProfileTab')
class UserProfileTabPage extends AutoRouter {
  const UserProfileTabPage({super.key});
}
