import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/page_auth/login_page.dart';
import 'package:flutter_application_1/auth/page_auth/sign_up_page.dart';
import 'package:flutter_application_1/auth/widgets/form_error.dart';
import 'package:flutter_application_1/constants.dart';

class ForgotPasswordPage extends StatefulWidget {
  static const routerName = "/ForgotPasswordPage.routerName";
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.remove(error!);
      });
    }
  }

  late String email;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: kAppBar,
          title: const Text(
            "Forgot Password",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ////Forgot password
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (newValue) => email = newValue!,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        removeError(error: "please Enter Valid email");
                      } else if (emailValidatorRegExp.hasMatch(value)) {
                        removeError(error: "please Enter Valid Email");
                      }
                      return null;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        addError(error: "please Enter Valid email");
                        return "";
                      } else if (!emailValidatorRegExp.hasMatch(value)) {
                        addError(error: "please Enter Valid Email");
                        return "";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Email",
                      hintText: "Enter your Email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: kAppBar,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FormError(errors: errors),
                  const SizedBox(height: 20),
                  //// login sign In
                  ElevatedButton(
                    onPressed: (() {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, LoginPage.routerName);
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
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  const SizedBox(height: 20),
////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, SignUpPage.routerName);
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 20,
                              color: kAppBar,
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
      ),
    );
  }
}
