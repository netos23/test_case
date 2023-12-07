import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';

import 'package:flutter/material.dart';
import 'package:hotel_writer/data/repository/auth_repository.dart';
import 'package:hotel_writer/domain/models/profile.dart';
import 'package:hotel_writer/internal/app_components.dart';
import 'package:hotel_writer/router/app_router.dart';
import 'package:hotel_writer/util/snack_bar_util.dart';
import 'package:hotel_writer/util/value_stream_wrapper.dart';
import 'package:hotel_writer/util/wm_extensions.dart';
import 'register_page_model.dart';
import 'register_page_widget.dart';

abstract class IRegisterPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  ValueStreamWrapper<String> get genderController;

  AuthRepository get authRepository;

  TextEditingController get firstNameController;

  TextEditingController get secondNameController;

  TextEditingController get emailController;

  TextEditingController get bitrhdayController;

  TextEditingController get phoneNumber;

  onRegister();
}

RegisterPageWidgetModel defaultRegisterPageWidgetModelFactory(
    BuildContext context) {
  return RegisterPageWidgetModel(RegisterPageModel());
}

// TODO: cover with documentation
/// Default widget model for RegisterPageWidget
class RegisterPageWidgetModel
    extends WidgetModel<RegisterPageWidget, RegisterPageModel>
    with ThemeProvider
    implements IRegisterPageWidgetModel {
  RegisterPageWidgetModel(RegisterPageModel model) : super(model);

  @override
  AuthRepository authRepository = AuthRepository(AppComponents().authService);

  @override
  final bitrhdayController = TextEditingController();

  @override
  final emailController = TextEditingController();

  @override
  final firstNameController = TextEditingController();

  @override
  final phoneNumber = TextEditingController();

  @override
  final secondNameController = TextEditingController();

  @override
  void initWidgetModel() {
    emailController.text = widget.email ?? '';
    super.initWidgetModel();
  }

  @override
  Future<void> onRegister() async {
    final request = Profile(
      email: emailController.text,
      firstName: firstNameController.text,
      secondName: secondNameController.text,
      phone: phoneNumber.text,
      birthDate: bitrhdayController.text,
      gender: genderController.value,
    );

    try {
      await authRepository.register(profile: request);
      router.push(
        AuthCodeRoute(email: request.email),
      );
    } on DioException catch (error) {
      if (error.response?.statusCode == 403) {
        context.showSnackBar('Пользователь уже зарегистрирован');
        return;
      }
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  @override
  void dispose() {
    phoneNumber.dispose();
    firstNameController.dispose();
    secondNameController.dispose();
    emailController.dispose();
    genderController.dispose();
    bitrhdayController.dispose();
    super.dispose();
  }

  @override
  ValueStreamWrapper<String> genderController = ValueStreamWrapper();
}
