import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/data/repository/auth_repository.dart';
import 'package:test_case/domain/entity/auth/auth_email_part2_request.dart';
import 'package:test_case/domain/use_case/profile_use_case.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/util/wm_extensions.dart';
import 'auth_code_page_model.dart';
import 'auth_code_page_widget.dart';

abstract class IAuthCodePageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextEditingController get codeController;

  ProfileUseCase get profileUseCase;

  Future<void> confirmCode();
}

AuthCodePageWidgetModel defaultAuthCodePageWidgetModelFactory(
    BuildContext context) {
  return AuthCodePageWidgetModel(AuthCodePageModel());
}

class AuthCodePageWidgetModel
    extends WidgetModel<AuthCodePageWidget, AuthCodePageModel>
    with ThemeProvider
    implements IAuthCodePageWidgetModel {
  @override
  TextEditingController codeController = TextEditingController();

  @override
  final profileUseCase = AppComponents().profileUseCase;

  final authRepository = AuthRepository(
    AppComponents().authService,
  );

  @override
  Future<void> confirmCode() async {
    await authRepository.emailPart2(
      request: AuthEmailPart2Request(
        email: widget.email,
        code: codeController.text,
      ),
    );
    profileUseCase.loadProfile();
  }

  AuthCodePageWidgetModel(AuthCodePageModel model) : super(model);
}
