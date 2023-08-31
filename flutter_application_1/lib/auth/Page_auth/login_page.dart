import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/page_auth/sign_up_page.dart';
import 'package:flutter_application_1/auth/widgets/sign_form.dart';
import 'package:flutter_application_1/auth/widgets/socal_card.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  static const routerName = "/LoginPage.routerName";
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          backgroundColor: kAppBar,
          title: const Text(
            "LoginPage",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 300,
                  alignment: Alignment.center,
                  child: Lottie.asset("assets/json/animation_lkqi5urd.json"),
                ),
                SignForm(),

                ////3 tấm hình google fb tw
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SocalCard(
                      icon: "assets/images/google.png",
                    ),
                    SocalCard(
                      icon: "assets/images/fb.png",
                    ),
                    SocalCard(
                      icon: "assets/images/tw.png",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, SignUpPage.routerName);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.orange,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
