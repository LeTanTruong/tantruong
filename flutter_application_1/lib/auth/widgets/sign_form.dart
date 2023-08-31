import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/bottom_navigation_bar_screen.dart';
import 'package:flutter_application_1/auth/page_auth/forgot_password_page.dart';
import 'package:flutter_application_1/auth/widgets/form_error.dart';
import 'package:flutter_application_1/constants.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  bool showEyes = false;

  bool isLoading = false;

  final formKey = GlobalKey<FormState>();

  late String email;

  late String password;

  bool remember = false;

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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          ////email
          buildEmailFormField(),
          const SizedBox(height: 20),
          ////password
          buildPasswordFormField(),
          const SizedBox(height: 20),
          ////lỗi
          FormError(errors: errors),
          const SizedBox(height: 20),
          ////remember and forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: remember,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        remember = value!;
                      });
                    },
                  ),
                  const Text("Remember me"),
                ],
              ),

              //Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPasswordPage.routerName);
                },
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          //// login sign In
          ElevatedButton(
            onPressed: (() {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.pushReplacementNamed(
                    context, BottomNavigationBarScreen.routerName);
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
              'SignIn',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ],
      ),
    );
  }

//// Email
  TextFormField buildEmailFormField() {
    return TextFormField(
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
          color: Colors.amber,
          size: 20,
        ),
      ),
    );
  }

////password
  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: !showEyes,
      keyboardType: TextInputType.multiline,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: "please Enter Valid Password");
        } else if (value.length >= 8) {
          removeError(error: "please Enter Valid Password");
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: "please Enter Valid Password");
          return "";
        } else if (value.length < 8) {
          addError(error: "please Enter Valid Password");
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Password",
        hintText: "Enter your Password",
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              showEyes = !showEyes;
            });
          },
          child: showEyes
              ? const Icon(
                  Icons.visibility,
                  color: Colors.amber,
                )
              : const Icon(
                  Icons.visibility_off,
                  color: Colors.amber,
                ),
        ),
        prefixIcon: const Icon(
          Icons.email,
          color: Colors.amber,
          size: 20,
        ),
      ),
    );
  }
}
