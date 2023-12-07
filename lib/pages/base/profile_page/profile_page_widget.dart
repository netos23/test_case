import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:hotel_writer/domain/models/profile.dart';
import 'package:hotel_writer/pages/components/theme_switch.dart';
import 'package:hotel_writer/router/app_router.dart';

import 'profile_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfilePage module
@RoutePage()
class ProfilePageWidget extends ElementaryWidget<IProfilePageWidgetModel> {
  const ProfilePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfilePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfilePageWidgetModel wm) {
    final theme = wm.theme;

    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Профиль'),
            centerTitle: true,
            actions: const [
              ThemeSwitch(),
            ],
          ),
          body: StreamBuilder<Profile?>(
            initialData: wm.profileController.valueOrNull,
            stream: wm.profileController.stream,
            builder: (context, profileSnapshot) {
              final isLogin = profileSnapshot.hasData &&
                  profileSnapshot.data!.email.isNotEmpty;
              final width = MediaQuery.of(context).size.width - 90;

              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 10,
                  ),
                  child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 800),
                      child: isLogin
                          ? SizedBox(
                              width: 600,
                              child: Column(
                                children: [
                                  MenuItem(
                                      onTap: wm.onEditProfileTap,
                                      title: 'Мои данные',
                                      icon: Icons.person),
                                  const Divider(),
                                  MenuItem(
                                      onTap: wm.onMyOrder,
                                      title: 'Мои заказы',
                                      icon: Icons.shopping_cart),
                                  const Divider(),
                                  MenuItem(
                                      onTap: wm.onMyZone,
                                      title: 'Мои зоны',
                                      icon: Icons.map),
                                  const Divider(),
                                  MenuItem(
                                    onTap: wm.onAabout,
                                    title: 'O нас',
                                    icon: Icons.settings_outlined,
                                  ),
                                  const Divider(),
                                  Flexible(
                                    child: Image.asset(
                                      'assets/images/logo_large.png',
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 10,
                                  child: Image.asset(
                                    'assets/images/logo_large.png',
                                    width: width,
                                    height: width,
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    'Что бы администрировать\n на полную катушку,\n зарегистрируйтесь или\n войдите в аккаунт :) ',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: 500,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: FilledButton(
                                            style: theme.filledButtonTheme.style
                                                ?.copyWith(
                                              fixedSize:
                                                  const MaterialStatePropertyAll(
                                                Size.fromHeight(50),
                                              ),
                                            ),
                                            onPressed: () {
                                              if (!isLogin) {
                                                context.router
                                                    .push(AuthRoute());
                                              } else {
                                                wm.profileUseCase.logout();
                                              }
                                            },
                                            child: Center(
                                              child: !isLogin
                                                  ? const Text('Войти')
                                                  : const Text('Выйти'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Expanded(
                                          child: OutlinedButton(
                                              onPressed: () => context.router
                                                  .push(RegisterRoute()),
                                              child: const Text(
                                                  'Зарегистрироваться')),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  final void Function() onTap;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(icon),
        title: Text(title),
        onTap: onTap,
        trailing: const Icon(Icons.navigate_next),
      ),
    );
  }
}
