import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Bottom_Navigation_Bar_Screen.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/forgot_password_page.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/widgets/constants.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/widgets/form_error.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
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
          SizedBox(height: 20),
          ////password
          buildPasswordFormField(),
          SizedBox(height: 20),
          ////lỗi
          FormError(errors: errors),
          SizedBox(height: 20),
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
                  Text("Remember me"),
                ],
              ),

              //Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPasswordPage.routerName);
                },
                child: Text(
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
            child: Text(
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
    );
  }

////password
  TextFormField buildPasswordFormField() {
    return TextFormField(
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
        labelText: "Password",
        hintText: "Enter your Password",
        prefixIcon: Icon(
          Icons.email,
          color: Colors.amber,
          size: 20,
        ),
      ),
    );
  }
}
