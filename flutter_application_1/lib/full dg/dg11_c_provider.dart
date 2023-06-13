import 'package:flutter/material.dart';

class CProvider extends ChangeNotifier {
  void login(String email, String password) async {
    print('email$email password$password');
  }
}
