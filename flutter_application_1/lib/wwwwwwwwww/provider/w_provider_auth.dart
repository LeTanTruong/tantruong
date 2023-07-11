import 'package:flutter/material.dart';
import 'package:flutter_application_1/wwwwwwwwww/provider/w_auth_repository.dart';

class ProviderAuth extends ChangeNotifier {
  final AuthRepository _authRepository;
  Stream<bool> get isLoginStream => _authRepository.isLoginStream;
  ProviderAuth(this._authRepository);
  Future<void> login() async {
    await _authRepository.login;
  }

  Future<void> logout() async {
    await _authRepository.logout();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _authRepository.dispose();
  }
}
