import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_case/data/repository/auth_repository.dart';
import 'package:test_case/domain/entity/auth/auth_email_part1_request.dart';
import 'package:test_case/domain/entity/auth/auth_email_part2_request.dart';
import 'package:test_case/domain/use_case/profile_use_case.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/internal/logger.dart';
import 'package:test_case/router/app_router.dart';
import 'package:test_case/util/snack_bar_util.dart';
import 'package:test_case/util/wm_extensions.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_page_model.dart';
import 'auth_page_widget.dart';

enum AuthState {
  phone,
  loading,
  code;
}

abstract class IAuthPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextEditingController get emailController;

  TextEditingController get codeController;

  AuthRepository get authRepository;

  Future<void> onSendCode();

  Future<void> confirmCode();

  BehaviorSubject<AuthState> get authStateController;
}

AuthPageWidgetModel defaultAuthPageWidgetModelFactory(BuildContext context) {
  return AuthPageWidgetModel(
    AuthPageModel(),
    AppComponents().profileUseCase,
  );
}

class AuthPageWidgetModel extends WidgetModel<AuthPageWidget, AuthPageModel>
    with ThemeProvider
    implements IAuthPageWidgetModel {
  final ProfileUseCase profileUseCase;

  @override
  final authStateController = BehaviorSubject.seeded(AuthState.phone);

  @override
  final emailController = TextEditingController();

  @override
  AuthRepository authRepository = AuthRepository(
    AppComponents().authService,
  );

  @override
  TextEditingController codeController = TextEditingController();

  AuthPageWidgetModel(
    AuthPageModel model,
    this.profileUseCase,
  ) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
  }

  @override
  Future<void> onSendCode() async {
    final email = emailController.text;
    authStateController.add(AuthState.loading);
    try {
      await authRepository.emailPart1(
        request: AuthEmailPart1Request(
          email: email,
          digits: 4,
        ),
      );
      authStateController.add(AuthState.code);
      if (kDebugMode) {
        print(authStateController.value);
      }
    } on DioException catch (error) {
      if (isMounted) {
        // ignore: use_build_context_synchronously
        context.showErrorSnackBar('Пользователь не найден');
      }
      if (error.response?.statusCode == 451){
        router.push(RegisterRoute());
      }

      authStateController.add(AuthState.phone);
      throw Exception(
        error.response?.data['message'],
      );
    } catch (e) {
      if (isMounted) {
        // ignore: use_build_context_synchronously
        context.showErrorSnackBar('Неизвестная ошибка');
      }
      authStateController.add(AuthState.phone);
      logger.f(e);
      rethrow;
    }
  }

  @override
  Future<void> confirmCode() async {
    final email = emailController.text;
    try {
      await authRepository.emailPart2(
        request: AuthEmailPart2Request(
          email: email,
          code: codeController.text,
        ),
      );
      final profile = await profileUseCase.loadProfile();

      final callback = widget.authCallback;
      callback?.call(profile);
      if (callback == null) {
        router.pop();
      }
    } on DioException catch (error) {
      if (isMounted) {
        // ignore: use_build_context_synchronously
        context.showErrorSnackBar('Неверный код');
      }
      throw Exception(
        error.response?.data['message'],
      );
    } catch (e) {
      if (isMounted) {
        // ignore: use_build_context_synchronously
        context.showErrorSnackBar('Неизвестная ошибка');
      }
      logger.f(e);
      rethrow;
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    codeController.dispose();
    authStateController.close();
    super.dispose();
  }
}
