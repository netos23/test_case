import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenRepository extends ChangeNotifier {
  TokenRepository({
    bool useCaching = true,
  }) : _useCaching = useCaching;

  bool get auth => _refreshToken != null;

  String? get accessToken => _accessToken;

  String? get refreshToken => _refreshToken;

  /// JWT token.
  String? _accessToken;

  /// JWT refresh token.
  String? _refreshToken;

  /// Use to enable/disable token caching. Default value is true
  final bool _useCaching;

  /// Getting tokens from cache.
  Future<void> initTokens() async {
    if (_useCaching) {
      final storage = await SharedPreferences.getInstance();
      _accessToken = storage.getString('accessToken');
      _refreshToken = storage.getString('refreshToken');
    }
    notifyListeners();
  }

  Future<void> deleteTokens() async {
    _accessToken = null;
    _refreshToken = null;

    notifyListeners();

    final storage = await SharedPreferences.getInstance();
    await storage.remove('accessToken');
    await storage.remove('refreshToken');
  }

  void saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    notifyListeners();
    if (_useCaching) {
      await _persistTokens();
    }
  }

  Future<void> _persistTokens() async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString('accessToken', _accessToken!);
    await storage.setString('refreshToken', _refreshToken!);
  }
}
