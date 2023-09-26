//lib\eeeeeeeeee\e_pages\e_LoginPage.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onPressed;
  const LoginPage({super.key, required this.onPressed});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool isLoading = false;
  signInWithEmailAndPassword() async {
    try {
      setState(() {
        isLoading = true;
      });
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      setState(() {
        isLoading = false;
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      if (e.code == 'user-not-found') {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "chưa đăng ký tài khoản",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        );
      } else if (e.code == "wrong-password") {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "Mật khẩu đăng nhập sai",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        );
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 221, 166),
        title: const Text(
          "LoginPage",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  height: 300,
                  alignment: Alignment.center,
                  child: Lottie.asset("assets/json/hinhsignup.json"),
                ),
                //1//////////////////////////////////////////////////////
                TextFormField(
                  controller: email,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "Email đang trống";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    labelText: "Enter your Email",
                    prefixIcon: Icon(
                      Icons.access_alarms,
                      color: kOrange,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                //2//////////////////////////////////////////////
                TextFormField(
                  controller: password,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "Password cần 6 ký tự trở lên";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Enter your Password",
                    prefixIcon: Icon(
                      Icons.password,
                      color: kOrange,
                      size: 30,
                    ),
                  ),
                ),
                //3////////////////////////////////////////////////////
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: (() {
                    if (formKey.currentState!.validate()) {
                      signInWithEmailAndPassword();
                    }
                  }),
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      minimumSize: const Size(
                        400,
                        50,
                      ),
                      backgroundColor: const Color.fromARGB(255, 7, 156, 255),
                      elevation: 0),
                  child: isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )
                      : const Text(
                          'SignIn',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                ),
                const SizedBox(height: 20),
                //4/////////////////////////////////////////////////////
                ElevatedButton(
                  onPressed: widget.onPressed,
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      minimumSize: const Size(
                        400,
                        50,
                      ),
                      backgroundColor: const Color.fromARGB(255, 7, 156, 255),
                      elevation: 0),
                  child: const Text(
                    'SignUp',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
