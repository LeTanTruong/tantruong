import 'dart:async';

class AuthRepository {
  final StreamController<bool> _isLoginController =
      StreamController<bool>.broadcast();
  Stream<bool> get isLoginStream => _isLoginController.stream;
  Future<void> login(String email, String password) async {
    _isLoginController.add(true);
  }

  Future<void> logout() async {
    _isLoginController.add(false);
  }

  void dispose() {
    _isLoginController.close();
  }
}
