import 'package:dadata_suggestions/dadata_suggestions.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_case/data/interseptor.dart';
import 'package:test_case/data/repository/auth_repository.dart';
import 'package:test_case/data/repository/dadata_repository.dart';
import 'package:test_case/data/repository/game_repository.dart';
import 'package:test_case/data/repository/token_ropository.dart';
import 'package:test_case/data/service/auth_service.dart';
import 'package:test_case/data/service/banner_service.dart';
import 'package:test_case/data/service/geozones_service.dart';
import 'package:test_case/domain/use_case/profile_use_case.dart';
import 'package:test_case/pages/game/chat/domain/manager/sound_controller.dart';

const timeout = Duration(seconds: 30);

class AppComponents {
  static final AppComponents _instance = AppComponents._internal();

  factory AppComponents() => _instance;

  AppComponents._internal();

  final tokenDaData = '603bb84c98131f6cc1c0a20dd1a34f349307b086';
  final Dio dio = Dio();

  late final AuthService authService = AuthService(dio);
  late final BannerService bannerService = BannerService(dio);
  late final GeozonesService geozonesService = GeozonesService(dio);
  final soundController = SoundController();

  final TokenRepository tokenRepository = TokenRepository();

  final GameRepository gameRepository = GameRepository();

  late final GeolocationDadataRepository dadataRepository =
      GeolocationDadataRepository(
    DadataSuggestions(tokenDaData),
  );

  late final ProfileUseCase profileUseCase =
      ProfileUseCase(tokenRepository, AuthRepository(authService));

  Future<void> init() async {
    dio.options
      ..baseUrl = 'https://cybertest.fbtw.ru/'
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;
    dio.interceptors.add(PrettyDioLogger());

    await tokenRepository.initTokens();
    dio.interceptors.add(
      JWTInterceptor(
        repository: tokenRepository,
        dio: dio,
      ),
    );
    await soundController.init();
  }
}
