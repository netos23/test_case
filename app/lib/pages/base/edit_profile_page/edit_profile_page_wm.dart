import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:test_case/domain/models/profile.dart';
import 'package:test_case/domain/use_case/profile_use_case.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/util/wm_extensions.dart';

import 'edit_profile_page_model.dart';
import 'edit_profile_page_widget.dart';

abstract class IEditProfilePageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  BehaviorSubject<String?> get genderController;

  ProfileUseCase get profileUseCase;

  TextEditingController get firstNameController;

  TextEditingController get secondNameController;

  TextEditingController get emailController;

  TextEditingController get bitrhdayController;

  TextEditingController get phoneNumber;

  BehaviorSubject<Profile?> get profileController;

  BehaviorSubject<bool> get age6Controller;

  BehaviorSubject<bool> get age13Controller;

  BehaviorSubject<bool> get age16Controller;

  BehaviorSubject<int> get totalScoreController;

  BehaviorSubject<bool> get initialController;

  onEditProfile();
}

EditProfilePageWidgetModel defaultEditProfilePageWidgetModelFactory(
    BuildContext context) {
  return EditProfilePageWidgetModel(EditProfilePageModel());
}

// TODO: cover with documentation
/// Default widget model for EditProfilePageWidget
class EditProfilePageWidgetModel
    extends WidgetModel<EditProfilePageWidget, EditProfilePageModel>
    with ThemeProvider
    implements IEditProfilePageWidgetModel {
  EditProfilePageWidgetModel(EditProfilePageModel model) : super(model);

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
  BehaviorSubject<String?> genderController = BehaviorSubject();
  BehaviorSubject<bool> age6Controller = BehaviorSubject();
  BehaviorSubject<bool> age13Controller = BehaviorSubject();
  BehaviorSubject<bool> age16Controller = BehaviorSubject();
  BehaviorSubject<bool> initialController = BehaviorSubject();
  BehaviorSubject<int> totalScoreController = BehaviorSubject();
  @override
  BehaviorSubject<Profile?> profileController = BehaviorSubject<Profile?>();
  @override
  BehaviorSubject<List<int>> profileInterestIdsController =
      BehaviorSubject.seeded([]);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    if (profileController.valueOrNull != null) {
      profileController.add(profileUseCase.profile.value);
    }

    profileUseCase.profile.stream.listen((event) {
      profileController.add(event);
    });

    profileController.listen((event) {
      emailController.text = event?.email ?? '';
      firstNameController.text = event?.firstName ?? '';
      secondNameController.text = event?.secondName ?? '';
      phoneNumber.text = event?.phone ?? '';
      bitrhdayController.text = event?.birthDate ?? '';
      genderController.add(event?.gender);
      age6Controller.add(event?.age6_12 ?? false);
      age13Controller.add(event?.age13_16 ?? false);
      age16Controller.add(event?.age16_90 ?? false);
      totalScoreController.add(event?.totalScore ?? 0);
    });

    if (profileUseCase.profile.valueOrNull == null) {
      profileUseCase.loadProfile();
    }
    if (widget.profile != null) {
      profileController.add(widget.profile);
    }
  }

  @override
  Future<void> onEditProfile() async {
    final request = Profile(
      email: emailController.text,
      firstName: firstNameController.text,
      secondName: secondNameController.text,
      phone: phoneNumber.text,
      birthDate: bitrhdayController.text,
      gender: genderController.value,
      age6_12: age6Controller.valueOrNull ?? false,
      age13_16: age13Controller.valueOrNull ?? false,
      age16_90: age16Controller.valueOrNull ?? false,
    );

    try {
      await profileUseCase.patchProfile(request);
    } on DioException catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    firstNameController.dispose();
    secondNameController.dispose();
    phoneNumber.dispose();
    bitrhdayController.dispose();
    genderController.close();
    profileController.close();
    age6Controller.close();
    age13Controller.close();
    age16Controller.close();
    totalScoreController.close();
    initialController.close();
    super.dispose();
  }

  @override
  ProfileUseCase profileUseCase = AppComponents().profileUseCase;
}
