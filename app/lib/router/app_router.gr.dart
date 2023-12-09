// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthCodeRoute.name: (routeData) {
      final args = routeData.argsAs<AuthCodeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthCodePageWidget(
          key: args.key,
          email: args.email,
          wmFactory: args.wmFactory,
        ),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthPageWidget(
          key: args.key,
          authCallback: args.authCallback,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ChapterFinRoute.name: (routeData) {
      final args = routeData.argsAs<ChapterFinRouteArgs>(
          orElse: () => const ChapterFinRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChapterFinPageWidget(
          key: args.key,
          levelMap: args.levelMap,
        ),
      );
    },
    ChooseCityRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseCityRouteArgs>(
          orElse: () => const ChooseCityRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChooseCityPageWidget(
          profile: args.profile,
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    CourseDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CourseDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CourseDetailPageWidget(
          key: args.key,
          courseId: args.courseId,
          wmFactory: args.wmFactory,
        ),
      );
    },
    CourseRoute.name: (routeData) {
      final args = routeData.argsAs<CourseRouteArgs>(
          orElse: () => const CourseRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CoursePageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    CourseTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CourseTabPage(),
      );
    },
    DetailTestRoute.name: (routeData) {
      final args = routeData.argsAs<DetailTestRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailTestPageWidget(
          key: args.key,
          testId: args.testId,
          wmFactory: args.wmFactory,
        ),
      );
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>(
          orElse: () => const EditProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditProfilePageWidget(
          profile: args.profile,
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    EmptyCharacterRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<EmptyCharacterRouteArgs>(
          orElse: () =>
              EmptyCharacterRouteArgs(text: queryParams.optString('text')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EmptyCharacterPageWidget(
          key: args.key,
          text: args.text,
        ),
      );
    },
    GameRoute.name: (routeData) {
      final args =
          routeData.argsAs<GameRouteArgs>(orElse: () => const GameRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GamePageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    GameTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GameTabPage(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    NaivRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<NaivRouteArgs>(
          orElse: () => NaivRouteArgs(text: queryParams.optString('text')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NaivPageWidget(
          key: args.key,
          text: args.text,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfilePageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegisterPageWidget(
          email: args.email,
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ShopGameRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ShopGameRouteArgs>(
          orElse: () => ShopGameRouteArgs(
                level: queryParams.get('level'),
                config: queryParams.get('config'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShopGamePageWidget(
          key: args.key,
          level: args.level,
          config: args.config,
        ),
      );
    },
    ShowCaseRoute.name: (routeData) {
      final args = routeData.argsAs<ShowCaseRouteArgs>(
          orElse: () => const ShowCaseRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShowCasePageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ShowCaseTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShowCaseTabPage(),
      );
    },
    TellingRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<TellingRouteArgs>(
          orElse: () => TellingRouteArgs(
                  messages: queryParams.get(
                'messages',
                const [],
              )));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TellingPageWidget(
          key: args.key,
          messages: args.messages,
        ),
      );
    },
    TestRoute.name: (routeData) {
      final args =
          routeData.argsAs<TestRouteArgs>(orElse: () => const TestRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TestPageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    TestTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TestTabPage(),
      );
    },
    UserProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserProfileTabPage(),
      );
    },
    WebViewerRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<WebViewerRouteArgs>(
          orElse: () => WebViewerRouteArgs(
                title: queryParams.getString(
                  'title',
                  '',
                ),
                url: queryParams.getString(
                  'url',
                  '',
                ),
                hideAppbar: queryParams.optBool('hideAppbar'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WebViewerPageWidget(
          key: args.key,
          title: args.title,
          url: args.url,
          onNavigationRequest: args.onNavigationRequest,
          onPageFinished: args.onPageFinished,
          onWillPop: args.onWillPop,
          hideAppbar: args.hideAppbar,
        ),
      );
    },
  };
}

/// generated route for
/// [AuthCodePageWidget]
class AuthCodeRoute extends PageRouteInfo<AuthCodeRouteArgs> {
  AuthCodeRoute({
    Key? key,
    required String email,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultAuthCodePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AuthCodeRoute.name,
          args: AuthCodeRouteArgs(
            key: key,
            email: email,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthCodeRoute';

  static const PageInfo<AuthCodeRouteArgs> page =
      PageInfo<AuthCodeRouteArgs>(name);
}

class AuthCodeRouteArgs {
  const AuthCodeRouteArgs({
    this.key,
    required this.email,
    this.wmFactory = defaultAuthCodePageWidgetModelFactory,
  });

  final Key? key;

  final String email;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'AuthCodeRouteArgs{key: $key, email: $email, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [AuthPageWidget]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    Key? key,
    void Function(Profile?)? authCallback,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultAuthPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            authCallback: authCallback,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<AuthRouteArgs> page = PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.authCallback,
    this.wmFactory = defaultAuthPageWidgetModelFactory,
  });

  final Key? key;

  final void Function(Profile?)? authCallback;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, authCallback: $authCallback, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ChapterFinPageWidget]
class ChapterFinRoute extends PageRouteInfo<ChapterFinRouteArgs> {
  ChapterFinRoute({
    Key? key,
    LevelMap? levelMap,
    List<PageRouteInfo>? children,
  }) : super(
          ChapterFinRoute.name,
          args: ChapterFinRouteArgs(
            key: key,
            levelMap: levelMap,
          ),
          initialChildren: children,
        );

  static const String name = 'ChapterFinRoute';

  static const PageInfo<ChapterFinRouteArgs> page =
      PageInfo<ChapterFinRouteArgs>(name);
}

class ChapterFinRouteArgs {
  const ChapterFinRouteArgs({
    this.key,
    this.levelMap,
  });

  final Key? key;

  final LevelMap? levelMap;

  @override
  String toString() {
    return 'ChapterFinRouteArgs{key: $key, levelMap: $levelMap}';
  }
}

/// generated route for
/// [ChooseCityPageWidget]
class ChooseCityRoute extends PageRouteInfo<ChooseCityRouteArgs> {
  ChooseCityRoute({
    Profile? profile,
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultChooseCityPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ChooseCityRoute.name,
          args: ChooseCityRouteArgs(
            profile: profile,
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ChooseCityRoute';

  static const PageInfo<ChooseCityRouteArgs> page =
      PageInfo<ChooseCityRouteArgs>(name);
}

class ChooseCityRouteArgs {
  const ChooseCityRouteArgs({
    this.profile,
    this.key,
    this.wmFactory = defaultChooseCityPageWidgetModelFactory,
  });

  final Profile? profile;

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ChooseCityRouteArgs{profile: $profile, key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [CourseDetailPageWidget]
class CourseDetailRoute extends PageRouteInfo<CourseDetailRouteArgs> {
  CourseDetailRoute({
    Key? key,
    required int courseId,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCourseDetailPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CourseDetailRoute.name,
          args: CourseDetailRouteArgs(
            key: key,
            courseId: courseId,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseDetailRoute';

  static const PageInfo<CourseDetailRouteArgs> page =
      PageInfo<CourseDetailRouteArgs>(name);
}

class CourseDetailRouteArgs {
  const CourseDetailRouteArgs({
    this.key,
    required this.courseId,
    this.wmFactory = defaultCourseDetailPageWidgetModelFactory,
  });

  final Key? key;

  final int courseId;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CourseDetailRouteArgs{key: $key, courseId: $courseId, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [CoursePageWidget]
class CourseRoute extends PageRouteInfo<CourseRouteArgs> {
  CourseRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCoursePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CourseRoute.name,
          args: CourseRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const PageInfo<CourseRouteArgs> page = PageInfo<CourseRouteArgs>(name);
}

class CourseRouteArgs {
  const CourseRouteArgs({
    this.key,
    this.wmFactory = defaultCoursePageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CourseRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [CourseTabPage]
class CourseTab extends PageRouteInfo<void> {
  const CourseTab({List<PageRouteInfo>? children})
      : super(
          CourseTab.name,
          initialChildren: children,
        );

  static const String name = 'CourseTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetailTestPageWidget]
class DetailTestRoute extends PageRouteInfo<DetailTestRouteArgs> {
  DetailTestRoute({
    Key? key,
    required int testId,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultDetailTestPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          DetailTestRoute.name,
          args: DetailTestRouteArgs(
            key: key,
            testId: testId,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailTestRoute';

  static const PageInfo<DetailTestRouteArgs> page =
      PageInfo<DetailTestRouteArgs>(name);
}

class DetailTestRouteArgs {
  const DetailTestRouteArgs({
    this.key,
    required this.testId,
    this.wmFactory = defaultDetailTestPageWidgetModelFactory,
  });

  final Key? key;

  final int testId;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'DetailTestRouteArgs{key: $key, testId: $testId, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [EditProfilePageWidget]
class EditProfileRoute extends PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    Profile? profile,
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultEditProfilePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          EditProfileRoute.name,
          args: EditProfileRouteArgs(
            profile: profile,
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const PageInfo<EditProfileRouteArgs> page =
      PageInfo<EditProfileRouteArgs>(name);
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({
    this.profile,
    this.key,
    this.wmFactory = defaultEditProfilePageWidgetModelFactory,
  });

  final Profile? profile;

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'EditProfileRouteArgs{profile: $profile, key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [EmptyCharacterPageWidget]
class EmptyCharacterRoute extends PageRouteInfo<EmptyCharacterRouteArgs> {
  EmptyCharacterRoute({
    Key? key,
    required String? text,
    List<PageRouteInfo>? children,
  }) : super(
          EmptyCharacterRoute.name,
          args: EmptyCharacterRouteArgs(
            key: key,
            text: text,
          ),
          rawQueryParams: {'text': text},
          initialChildren: children,
        );

  static const String name = 'EmptyCharacterRoute';

  static const PageInfo<EmptyCharacterRouteArgs> page =
      PageInfo<EmptyCharacterRouteArgs>(name);
}

class EmptyCharacterRouteArgs {
  const EmptyCharacterRouteArgs({
    this.key,
    required this.text,
  });

  final Key? key;

  final String? text;

  @override
  String toString() {
    return 'EmptyCharacterRouteArgs{key: $key, text: $text}';
  }
}

/// generated route for
/// [GamePageWidget]
class GameRoute extends PageRouteInfo<GameRouteArgs> {
  GameRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultGameWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          GameRoute.name,
          args: GameRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'GameRoute';

  static const PageInfo<GameRouteArgs> page = PageInfo<GameRouteArgs>(name);
}

class GameRouteArgs {
  const GameRouteArgs({
    this.key,
    this.wmFactory = defaultGameWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'GameRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [GameTabPage]
class GameTab extends PageRouteInfo<void> {
  const GameTab({List<PageRouteInfo>? children})
      : super(
          GameTab.name,
          initialChildren: children,
        );

  static const String name = 'GameTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePageWidget]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultHomePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.wmFactory = defaultHomePageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [NaivPageWidget]
class NaivRoute extends PageRouteInfo<NaivRouteArgs> {
  NaivRoute({
    Key? key,
    required String? text,
    List<PageRouteInfo>? children,
  }) : super(
          NaivRoute.name,
          args: NaivRouteArgs(
            key: key,
            text: text,
          ),
          rawQueryParams: {'text': text},
          initialChildren: children,
        );

  static const String name = 'NaivRoute';

  static const PageInfo<NaivRouteArgs> page = PageInfo<NaivRouteArgs>(name);
}

class NaivRouteArgs {
  const NaivRouteArgs({
    this.key,
    required this.text,
  });

  final Key? key;

  final String? text;

  @override
  String toString() {
    return 'NaivRouteArgs{key: $key, text: $text}';
  }
}

/// generated route for
/// [ProfilePageWidget]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfilePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    this.wmFactory = defaultProfilePageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [RegisterPageWidget]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    String? email,
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultRegisterPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(
            email: email,
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<RegisterRouteArgs> page =
      PageInfo<RegisterRouteArgs>(name);
}

class RegisterRouteArgs {
  const RegisterRouteArgs({
    this.email,
    this.key,
    this.wmFactory = defaultRegisterPageWidgetModelFactory,
  });

  final String? email;

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'RegisterRouteArgs{email: $email, key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ShopGamePageWidget]
class ShopGameRoute extends PageRouteInfo<ShopGameRouteArgs> {
  ShopGameRoute({
    Key? key,
    Level? level,
    ShopPageConfiguration? config,
    List<PageRouteInfo>? children,
  }) : super(
          ShopGameRoute.name,
          args: ShopGameRouteArgs(
            key: key,
            level: level,
            config: config,
          ),
          rawQueryParams: {
            'level': level,
            'config': config,
          },
          initialChildren: children,
        );

  static const String name = 'ShopGameRoute';

  static const PageInfo<ShopGameRouteArgs> page =
      PageInfo<ShopGameRouteArgs>(name);
}

class ShopGameRouteArgs {
  const ShopGameRouteArgs({
    this.key,
    this.level,
    this.config,
  });

  final Key? key;

  final Level? level;

  final ShopPageConfiguration? config;

  @override
  String toString() {
    return 'ShopGameRouteArgs{key: $key, level: $level, config: $config}';
  }
}

/// generated route for
/// [ShowCasePageWidget]
class ShowCaseRoute extends PageRouteInfo<ShowCaseRouteArgs> {
  ShowCaseRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultShowCasePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ShowCaseRoute.name,
          args: ShowCaseRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ShowCaseRoute';

  static const PageInfo<ShowCaseRouteArgs> page =
      PageInfo<ShowCaseRouteArgs>(name);
}

class ShowCaseRouteArgs {
  const ShowCaseRouteArgs({
    this.key,
    this.wmFactory = defaultShowCasePageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ShowCaseRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ShowCaseTabPage]
class ShowCaseTab extends PageRouteInfo<void> {
  const ShowCaseTab({List<PageRouteInfo>? children})
      : super(
          ShowCaseTab.name,
          initialChildren: children,
        );

  static const String name = 'ShowCaseTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TellingPageWidget]
class TellingRoute extends PageRouteInfo<TellingRouteArgs> {
  TellingRoute({
    Key? key,
    List<Message> messages = const [],
    List<PageRouteInfo>? children,
  }) : super(
          TellingRoute.name,
          args: TellingRouteArgs(
            key: key,
            messages: messages,
          ),
          rawQueryParams: {'messages': messages},
          initialChildren: children,
        );

  static const String name = 'TellingRoute';

  static const PageInfo<TellingRouteArgs> page =
      PageInfo<TellingRouteArgs>(name);
}

class TellingRouteArgs {
  const TellingRouteArgs({
    this.key,
    this.messages = const [],
  });

  final Key? key;

  final List<Message> messages;

  @override
  String toString() {
    return 'TellingRouteArgs{key: $key, messages: $messages}';
  }
}

/// generated route for
/// [TestPageWidget]
class TestRoute extends PageRouteInfo<TestRouteArgs> {
  TestRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultTestPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          TestRoute.name,
          args: TestRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'TestRoute';

  static const PageInfo<TestRouteArgs> page = PageInfo<TestRouteArgs>(name);
}

class TestRouteArgs {
  const TestRouteArgs({
    this.key,
    this.wmFactory = defaultTestPageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'TestRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [TestTabPage]
class TestTab extends PageRouteInfo<void> {
  const TestTab({List<PageRouteInfo>? children})
      : super(
          TestTab.name,
          initialChildren: children,
        );

  static const String name = 'TestTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserProfileTabPage]
class UserProfileTab extends PageRouteInfo<void> {
  const UserProfileTab({List<PageRouteInfo>? children})
      : super(
          UserProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WebViewerPageWidget]
class WebViewerRoute extends PageRouteInfo<WebViewerRouteArgs> {
  WebViewerRoute({
    Key? key,
    String title = '',
    String url = '',
    FutureOr<NavigationDecision> Function(NavigationRequest)?
        onNavigationRequest,
    void Function(String)? onPageFinished,
    void Function()? onWillPop,
    bool? hideAppbar,
    List<PageRouteInfo>? children,
  }) : super(
          WebViewerRoute.name,
          args: WebViewerRouteArgs(
            key: key,
            title: title,
            url: url,
            onNavigationRequest: onNavigationRequest,
            onPageFinished: onPageFinished,
            onWillPop: onWillPop,
            hideAppbar: hideAppbar,
          ),
          rawQueryParams: {
            'title': title,
            'url': url,
            'hideAppbar': hideAppbar,
          },
          initialChildren: children,
        );

  static const String name = 'WebViewerRoute';

  static const PageInfo<WebViewerRouteArgs> page =
      PageInfo<WebViewerRouteArgs>(name);
}

class WebViewerRouteArgs {
  const WebViewerRouteArgs({
    this.key,
    this.title = '',
    this.url = '',
    this.onNavigationRequest,
    this.onPageFinished,
    this.onWillPop,
    this.hideAppbar,
  });

  final Key? key;

  final String title;

  final String url;

  final FutureOr<NavigationDecision> Function(NavigationRequest)?
      onNavigationRequest;

  final void Function(String)? onPageFinished;

  final void Function()? onWillPop;

  final bool? hideAppbar;

  @override
  String toString() {
    return 'WebViewerRouteArgs{key: $key, title: $title, url: $url, onNavigationRequest: $onNavigationRequest, onPageFinished: $onPageFinished, onWillPop: $onWillPop, hideAppbar: $hideAppbar}';
  }
}
