//lib\eeeeeeeeee\e_pages\e_AuthPage.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auths/login_or_sign_up.dart';
import 'package:flutter_application_1/pages/page_home.dart';

class AuthPage extends StatelessWidget {
  static const routerName = "AuthPage.routerName";
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else {
                if (snapshot.hasData) {
                  return PageHome();
                } else {
                  return LoginOrSignUp();
                }
              }
            }));
  }
}
