import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/complete_profile_page.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/login_page.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/widgets/constants.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/widgets/form_error.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/widgets/socal_card.dart';
import 'package:lottie/lottie.dart';

class SignUpPage extends StatefulWidget {
  static const routerName = "/SignUpPage.routerName";
  const SignUpPage({
    super.key,
  });

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  late String email;
  String? password;

  String? conformPassword;
  final List<String> errors = [];
  // late String error;
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("SignUpPage"),
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
                  child: Lottie.asset("assets/json/animation_lkqi5urd.json"),
                ),
                ////email sign up
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (newValue) => email = newValue!,
                  // },
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
                SizedBox(height: 20),
                ////password sign up
                TextFormField(
                  //keyboardType: TextInputType.multiline,
                  onSaved: (newValue) => password = newValue!,
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      removeError(error: "please Enter Valid Password");
                    } else if (value.length >= 8) {
                      removeError(error: "please Enter Valid Password");
                    }
                    password = value;
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
                      Icons.key,
                      color: Colors.amber,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                //// confirm_password sign up
                TextFormField(
                  //keyboardType: TextInputType.multiline,
                  onSaved: (newValue) => conformPassword = newValue.toString(),
                  onChanged: (value) {
                    if (password == conformPassword) {
                      removeError(error: "Password donot match");
                    }
                    return null;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "";
                    } else if (password != value) {
                      addError(error: "Password donot match");
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
                    labelText: "Confirm_Password",
                    hintText: "Re-enter your Password",
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.amber,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FormError(errors: errors),
                SizedBox(height: 20),

                //// login sign Up
                ElevatedButton(
                  onPressed: (() {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      Navigator.pushNamed(context, CompleteProfile.routerName);
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
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                SizedBox(height: 20),
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
                            context, LoginPage.routerName);
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.orange,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),
                Text(
                  "data",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
