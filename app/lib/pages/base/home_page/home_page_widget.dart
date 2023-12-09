import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_case/router/app_router.dart';

import 'home_page_wm.dart';

// TODO: cover with documentation
/// Main widget for HomePage module
@RoutePage()
class HomePageWidget extends ElementaryWidget<IHomePageWidgetModel> {
  const HomePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultHomePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IHomePageWidgetModel wm) {
    return kIsWeb ? const _WebPage() : const _MobilePage();
  }
}

class _MobilePage extends StatelessWidget {
  const _MobilePage();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AutoTabsScaffold(
      routes: const [
        ShowCaseTab(),
        TestTab(),
        GameTab(),
        CourseTab(),
        UserProfileTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          animationDuration: const Duration(milliseconds: 300),
          destinations:  [
            const NavigationDestination(
              label: 'Новости',
              icon: Icon(Icons.border_all_outlined),
            ),
            const NavigationDestination(
              label: 'Тесты',
              icon: Icon(Icons.library_add_check),
            ),
            NavigationDestination(
              label: 'Игры',
              icon: const Icon(Icons.whatshot_outlined),
              selectedIcon: Icon(
                Icons.whatshot_outlined,
                color: theme.colorScheme.tertiary,
              ),
            ),
            const NavigationDestination(
              label: 'Курсы',
              icon: Icon(Icons.cast_for_education),
            ),
            const NavigationDestination(
              label: 'Профиль',
              icon: Icon(Icons.person_outline),
            ),
          ],
        );
      },
    );
  }
}

class _WebPage extends StatelessWidget {
  const _WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      builder: (context, child) {
        const tabs = [
          ShowCaseTab(),
          TestTab(),
          GameTab(),
          CourseTab(),
          UserProfileTab(),
        ];

        // we check for active route index by using
        //router.isRouteActive method
        var activeIndex = tabs.indexWhere(
          (d) => context.router.isRouteActive(d.routeName),
        );
        // there might be no active route until router is mounted
        // so we play safe
        if (activeIndex == -1) {
          activeIndex = 0;
        }
        return LayoutBuilder(
          builder: (context, constrains) {
            final theme = Theme.of(context);
            BoxConstraints bounds;
            final width = constrains.maxWidth;
            if (width <= 700) {
              bounds = constrains;
            } else {
              bounds = constrains.copyWith(
                minWidth: 0,
                maxWidth: max(width * 0.7, 700),
              );
            }

            return ColoredBox(
              color: Theme.of(context).colorScheme.background,
              child: Center(
                child: ConstrainedBox(
                  constraints: bounds,
                  child: Row(
                    children: [
                      NavigationRail(
                        labelType: NavigationRailLabelType.all,
                        destinations: [
                          const NavigationRailDestination(
                            label: Text('Новости'),
                            icon: Icon(Icons.border_all_outlined),
                          ),
                          const NavigationRailDestination(
                            label: Text('Тесты'),
                            icon: Icon(Icons.library_add_check),
                          ),
                          NavigationRailDestination(
                            label: const Text('Игры'),
                            icon: const Icon(Icons.whatshot_outlined),
                            selectedIcon: Icon(
                              Icons.whatshot_outlined,
                              color: theme.colorScheme.tertiary,
                            ),
                          ),
                          const NavigationRailDestination(
                            label: Text('Курсы'),
                            icon: Icon(Icons.cast_for_education),
                          ),
                          const NavigationRailDestination(
                            label: Text('Профиль'),
                            icon: Icon(Icons.person_outline),
                          ),
                        ],
                        selectedIndex: activeIndex,
                        onDestinationSelected: (index) {
                          // use navigate instead of push so you won't have
                          // many useless route stacks
                          context.navigateTo(tabs[index]);
                        },
                      ),
                      // child is the rendered route stack
                      Expanded(child: child)
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
