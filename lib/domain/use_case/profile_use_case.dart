import 'package:hotel_writer/data/repository/auth_repository.dart';
import 'package:hotel_writer/data/repository/token_ropository.dart';
import 'package:hotel_writer/domain/models/profile.dart';
import 'package:hotel_writer/util/lifecycle_component.dart';
import 'package:hotel_writer/util/value_stream_wrapper.dart';

class ProfileUseCase implements LifecycleComponent {
  final TokenRepository repository;
  final AuthRepository authRepository;
  final ValueStreamWrapper<Profile?> profile = ValueStreamWrapper();

  ProfileUseCase(this.repository, this.authRepository);

  @override
  void dispose() {
    repository.removeListener(_listenTokenStatus);
    profile.dispose();
  }

  @override
  void init() {
    repository.addListener(_listenTokenStatus);
  }

  void _listenTokenStatus() {
    if (profile.valueOrNull != null && !repository.auth) {
      profile.add(null);
    } else {
      loadProfile();
    }
  }

  Future<void> logout() async {
    await repository.deleteTokens();
    profile.add(null);
  }

  Future<void> deleteAccount() async {
    await authRepository.deleteUser();
    await repository.deleteTokens();
    profile.add(null);
  }

  Future<void> loadProfile() async {
    final result = await authRepository.getUser();
    profile.add(result);
  }

  Future<void> patchProfile(Profile newProfile) async {
    final result = await authRepository.patchUser(request: newProfile);
    profile.add(result);
  }
}
