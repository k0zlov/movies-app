import 'dart:async';

abstract interface class AuthService {
  Stream<bool> get authStateChanges;

  bool get isAuthorized;

  String? get getAccessToken;

  String? get getRefreshToken;

  Future<void> login({
    required String accessToken,
    required String refreshToken,
  });

  Future<void> logout();
}
