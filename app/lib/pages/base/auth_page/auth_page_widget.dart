import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_case/domain/models/profile.dart';
import 'package:pinput/pinput.dart';
// import 'package:video_player/video_player.dart';

import 'auth_page_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthPage module
@RoutePage()
class AuthPageWidget extends ElementaryWidget<IAuthPageWidgetModel> {
  const AuthPageWidget({
    Key? key,
    this.authCallback,
    WidgetModelFactory wmFactory = defaultAuthPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final ValueChanged<Profile?>? authCallback;

  @override
  Widget build(IAuthPageWidgetModel wm) {
    return Scaffold(
      floatingActionButton: wm.router.canPop()
          ? const Card(child: BackButton())
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            _AuthForm(wm: wm),
          ],
        ),
      ),
    );
  }
}

class _AuthForm extends StatelessWidget {
  const _AuthForm({
    required this.wm,
  });

  final IAuthPageWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, -0.6),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: 400,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: StreamBuilder(
                stream: wm.authStateController,
                builder: (context, stateSnapshot) {
                  final state = stateSnapshot.data ?? AuthState.phone;
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: switch (state) {
                      AuthState.phone || AuthState.loading => _PhoneWidget(
                          key: const Key('phone-widget'),
                          wm: wm,
                          state: state,
                        ),
                      AuthState.code => _CodeWidget(wm: wm),
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CodeWidget extends StatelessWidget {
  const _CodeWidget({
    required this.wm,
  });

  final IAuthPageWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final cursor = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 33,
        height: 5,
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: colorScheme.onSurfaceVariant,
        ),
      ),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 3,
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        Flexible(
          flex: 2,
          child: Text(
            'Введите код из email.',
            textAlign: TextAlign.center,
            style: textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Pinput(
            hapticFeedbackType: HapticFeedbackType.selectionClick,
            controller: wm.codeController,
            length: 4,
            autofillHints: const [AutofillHints.oneTimeCode],
            cursor: cursor,
            defaultPinTheme: PinTheme(
              width: 56,
              height: 60,
              textStyle: textTheme.titleLarge
                  ?.copyWith(color: colorScheme.onSurfaceVariant),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
                color: colorScheme.surfaceVariant,
              ),
            ),
            onCompleted: (_) => wm.confirmCode(),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
      ],
    );
  }
}

class _PhoneWidget extends StatelessWidget {
  const _PhoneWidget({
    super.key,
    required this.wm,
    required this.state,
  });

  final AuthState state;
  final IAuthPageWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 7,
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        Flexible(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: Text(
              'Авторизуйтись, чтобы получить доступ ко всем\nвозможностям портала.',
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ),
        Flexible(
          flex: 6,
          child: LayoutBuilder(builder: (context, constrains) {
            final maxWidth = constrains.biggest.width;
            return Flex(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              direction: maxWidth > 400 ? Axis.horizontal : Axis.vertical,
              children: [
                Flexible(
                  flex: maxWidth > 400 ? 2 : 1,
                  child: SizedBox(
                    height: 48,
                    child: TextField(
                      controller: wm.emailController,
                      textAlign: TextAlign.start,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onBackground,
                        overflow: TextOverflow.ellipsis,
                      ),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        fillColor: colorScheme.surfaceVariant,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 48,
                    child: switch (state) {
                      AuthState.phone => FilledButton(
                          onPressed: wm.onSendCode,
                          child: const Center(
                            child: Text('Войти'),
                          ),
                        ),
                      _ => const FilledButton(
                          onPressed: null,
                          child: Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ),
                        ),
                    },
                  ),
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}
