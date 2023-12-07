import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';

import 'package:flutter/material.dart';
import 'package:hotel_writer/data/repository/auth_repository.dart';
import 'package:hotel_writer/domain/entity/auth/auth_email_part1_request.dart';
import 'package:hotel_writer/internal/app_components.dart';
import 'package:hotel_writer/internal/logger.dart';
import 'package:hotel_writer/router/app_router.dart';
import 'package:hotel_writer/util/snack_bar_util.dart';
import 'package:hotel_writer/util/wm_extensions.dart';
import 'auth_page_model.dart';
import 'auth_page_widget.dart';

abstract class IAuthPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextEditingController get emailController;

  AuthRepository get authRepository;

  Future<void> onSendCode();
}

AuthPageWidgetModel defaultAuthPageWidgetModelFactory(BuildContext context) {
  return AuthPageWidgetModel(AuthPageModel());
}

class AuthPageWidgetModel extends WidgetModel<AuthPageWidget, AuthPageModel>
    with ThemeProvider
    implements IAuthPageWidgetModel {
  @override
  final emailController = TextEditingController();

  @override
  AuthRepository authRepository = AuthRepository(
    AppComponents().authService,
  );

  AuthPageWidgetModel(AuthPageModel model) : super(model);

  @override
  Future<void> onSendCode() async {
    final request = emailController.text;
    try {
      await authRepository.emailPart1(
        request: AuthEmailPart1Request(
          email: request,
          digits: 4,
        ),
      );
      router.push(
        AuthCodeRoute(email: emailController.text),
      );
    } on DioException catch (error) {
      if (error.response?.statusCode == 451) {
        router.push(RegisterRoute(email: emailController.text));
        context.showSnackBar('Пользователь не зарегистрирован');
        return;
      }
      throw Exception(
        error.response?.data['message'],
      );
    } catch (e) {
      logger.wtf(e);
    }
  }
}
