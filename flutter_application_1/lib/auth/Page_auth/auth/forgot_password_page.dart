import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/login_page.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/sign_up_page.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/widgets/constants.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/widgets/form_error.dart';

class ForgotPasswordPage extends StatefulWidget {
  static const routerName = "/ForgotPasswordPage.routerName";
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final formKey = GlobalKey<FormState>();
  //List<String> errors = [];
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
        //  backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          //backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Forgot Password",
            style: TextStyle(color: Colors.black),
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
                    decoration: InputDecoration(
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
                        color: Colors.amber,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  FormError(errors: errors),
                  SizedBox(height: 20),
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
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  SizedBox(height: 20),
////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, SignUpPage.routerName);
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
      ),
    );
  }
}
