import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_case/domain/models/profile.dart';
import 'edit_profile_page_wm.dart';

// TODO: cover with documentation
/// Main widget for EditProfilePage module
@RoutePage()
class EditProfilePageWidget
    extends ElementaryWidget<IEditProfilePageWidgetModel> {
  const EditProfilePageWidget({
    this.profile,
    Key? key,
    WidgetModelFactory wmFactory = defaultEditProfilePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final Profile? profile;

  @override
  Widget build(IEditProfilePageWidgetModel wm) {
    final theme = wm.theme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Мои данные',
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 600,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: StreamBuilder<Profile?>(
                stream: wm.profileController,
                builder: (context, snapshot) {
                  return ListView(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              TextField(
                                controller: wm.firstNameController,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onBackground,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Имя',
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              TextField(
                                controller: wm.secondNameController,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onBackground,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Фамилия',
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              TextField(
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
                              const SizedBox(
                                height: 8,
                              ),
                              TextField(
                                controller: wm.phoneNumber,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onBackground,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Номер телефона',
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              TextField(
                                controller: wm.bitrhdayController,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onBackground,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                onTap: () async {
                                  var date = DateTime.now();
                                  DateTime? initDate;
                                  if (profile?.birthDate?.isNotEmpty == true) {
                                    initDate = DateFormat().parse(profile!.birthDate!);
                                  }
                                  final result = await showDatePicker(
                                      context: context,
                                      initialDate: initDate,
                                      firstDate: DateTime(date.year - 100,
                                          date.month, date.day),
                                      lastDate: DateTime(
                                          date.year - 6, date.month, date.day));
                                  if (result != null) {
                                    wm.bitrhdayController.text = DateFormat('dd.mm.yy').format(result);
                                  }
                                },
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Дата рождения',
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              StreamBuilder<String?>(
                                  stream: wm.genderController.stream,
                                  initialData: '',
                                  builder: (context, genderSnapshot) {
                                    return Row(
                                      children: [
                                        Flexible(
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: _GenderCheckbox.male(
                                              value:
                                                  genderSnapshot.data == 'male',
                                              onChanged: () {
                                                wm.genderController.add('male');
                                              },
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: _GenderCheckbox.female(
                                              value: genderSnapshot.data ==
                                                  'female',
                                              onChanged: () {
                                                wm.genderController
                                                    .add('female');
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                              const SizedBox(
                                height: 16,
                              ),
                              OutlinedButton(
                                style: theme.filledButtonTheme.style?.copyWith(
                                    fixedSize: const MaterialStatePropertyAll(
                                        Size.fromHeight(50))),
                                onPressed: wm.onEditProfile,
                                child: const Center(child: Text('Сохранить')),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: SizedBox(
                          height: 50,
                          child: FilledButton(
                            style: theme.filledButtonTheme.style?.copyWith(
                                fixedSize: const MaterialStatePropertyAll(
                                    Size.fromHeight(50))),
                            onPressed: wm.profileUseCase.logout,
                            child: const Center(child: Text('Разлогиниться')),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}

class _GenderCheckbox extends StatelessWidget {
  const _GenderCheckbox({
    required this.value,
    required this.onChanged,
    required this.gender,
    Key? key,
  }) : super(key: key);

  const _GenderCheckbox.male({
    required this.value,
    required this.onChanged,
    Key? key,
  })  : gender = 'male',
        super(key: key);

  const _GenderCheckbox.female({
    required this.value,
    required this.onChanged,
    Key? key,
  })  : gender = 'female',
        super(key: key);

  final bool value;
  final void Function() onChanged;
  final String gender;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onChanged,
      child: Row(
        children: [
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              border: Border.all(
                color: value ? theme.hintColor : theme.primaryColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Visibility(
              visible: value,
              child: Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.primaryColor,
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 13,
          ),
          Text(
            gender == 'male' ? 'Мужской' : 'Женский',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onBackground,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
