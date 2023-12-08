import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/models/game/level.dart';
import 'package:test_case/domain/models/game/level_map.dart';
import 'package:test_case/domain/models/profile.dart';
import 'package:test_case/pages/base/auth_code_page/auth_code_page_widget.dart';
import 'package:test_case/pages/base/auth_code_page/auth_code_page_wm.dart';
import 'package:test_case/pages/base/auth_page/auth_page_widget.dart';
import 'package:test_case/pages/base/auth_page/auth_page_wm.dart';
import 'package:test_case/pages/base/edit_profile_page/edit_profile_page_widget.dart';
import 'package:test_case/pages/base/edit_profile_page/edit_profile_page_wm.dart';
import 'package:test_case/pages/base/home_page/home_page_wm.dart';
import 'package:test_case/pages/base/profile_page/profile_page_widget.dart';
import 'package:test_case/pages/base/profile_page/profile_page_wm.dart';
import 'package:test_case/pages/base/register_page/register_page_widget.dart';
import 'package:test_case/pages/base/register_page/register_page_wm.dart';
import 'package:test_case/pages/base/test_page/test_page_widget.dart';
import 'package:test_case/pages/base/test_page/test_page_wm.dart';
import 'package:test_case/pages/choose_city_page/choose_city_page.dart';
import 'package:test_case/pages/game/components/empty_character_page.dart';
import 'package:test_case/pages/game/components/naiv_page.dart';
import 'package:test_case/pages/game/components/secure_page.dart';
import 'package:test_case/pages/game/components/telling_page.dart';
import 'package:test_case/pages/game/domain/shop_page_configuration.dart';
import 'package:test_case/pages/game/game_widget.dart';
import 'package:test_case/pages/game/game_wm.dart';
import 'package:test_case/pages/game/level_pages/chapter_fin.dart';
import 'package:test_case/pages/game/level_pages/fin_test_1.dart';
import 'package:test_case/pages/game/level_pages/fin_test_1_1.dart';
import 'package:test_case/pages/game/level_pages/shop_game.dart';
import 'package:test_case/pages/game/story_telling_utils.dart';
import 'package:test_case/pages/web_view/web_view_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../pages/base/home_page/home_page_widget.dart';
import '../pages/base/show_case_page/show_case_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "PageWidget,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ShopGameRoute.page,
        ),
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
          page: FinTest1Route.page,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.noTransition,
          page: TellingRoute.page,
          opaque: false,
        ),
        AutoRoute(
          page: FinTest1_1Route.page,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.noTransition,
          page: ChapterFinRoute.page,
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
              page: TestTab.page,
              children: [
                AutoRoute(
                  page: TestRoute.page,
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
            AutoRoute(
              page: GameTab.page,
              children: [
                AutoRoute(
                  page: GameRoute.page,
                  initial: true,
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

@RoutePage(name: 'TestTab')
class TestTabPage extends AutoRouter {
  const TestTabPage({super.key});
}

@RoutePage(name: 'GameTab')
class GameTabPage extends AutoRouter {
  const GameTabPage({super.key});
}
