import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'auth_page_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthPage module
@RoutePage()
class AuthPageWidget extends ElementaryWidget<IAuthPageWidgetModel> {
  const AuthPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthPageWidgetModel wm) {
    final theme = wm.theme;
    final textTheme = wm.textTheme;
    final colorTheme = wm.colorScheme;
    final router = wm.router;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Вход',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: SizedBox(
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 32,
                    ),
                    child: TextField(
                      textAlign: TextAlign.start,
                      controller: wm.emailController,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onBackground,
                        overflow: TextOverflow.ellipsis,
                      ),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  height: 82,
                  child: FilledButton(
                    style: theme.filledButtonTheme.style?.copyWith(
                        fixedSize: const MaterialStatePropertyAll(
                            Size.fromHeight(50))),
                    onPressed: wm.onSendCode,
                    child: const Center(
                      child: Text('Получить код'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
