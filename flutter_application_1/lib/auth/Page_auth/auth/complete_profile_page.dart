import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Bottom_Navigation_Bar_Screen.dart';
import 'package:flutter_application_1/Pages/homes/home_page.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/widgets/constants.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/widgets/form_error.dart';

class CompleteProfile extends StatefulWidget {
  static const routerName = "/CompleteProfile.routerName";
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  final formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

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
        centerTitle: true,
        title: Text("CompleteProfile"),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ////firstName
                TextFormField(
                  //keyboardType: TextInputType.emailAddress,
                  onSaved: (newValue) => firstName = newValue!,
                  // },
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      removeError(error: "please Enter your name");
                    }
                    //  else if (emailValidatorRegExp.hasMatch(value)) {
                    //   removeError(error: "please Enter Valid Email");
                    // }
                    return null;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      addError(error: "please Enter your name");
                      return "";
                    }
                    // else if (!emailValidatorRegExp.hasMatch(value)) {
                    //   addError(error: "please Enter Valid Email");
                    //   return "";
                    // }
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
                    labelText: "FirstName",
                    hintText: "Enter your FirstName",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.amber,
                      size: 20,
                    ),
                  ),
                ),
                //// lastName
                SizedBox(height: 20),
                TextFormField(
                  //keyboardType: TextInputType.emailAddress,
                  onSaved: (newValue) => lastName = newValue!,

                  // onChanged: (value) {
                  //   if (value.isNotEmpty) {
                  //     removeError(error: "please Enter your name");
                  //   }
                  //   //  else if (emailValidatorRegExp.hasMatch(value)) {
                  //   //   removeError(error: "please Enter Valid Email");
                  //   // }
                  //   return null;
                  // },
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     addError(error: "please Enter your name");
                  //     return "";
                  //   }
                  //   // else if (!emailValidatorRegExp.hasMatch(value)) {
                  //   //   addError(error: "please Enter Valid Email");
                  //   //   return "";
                  //   // }
                  //   return null;
                  // },
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
                    labelText: "LastName",
                    hintText: "Enter your LastName",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.amber,
                      size: 20,
                    ),
                  ),
                ),
                ////phoneNumber
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onSaved: (newValue) => phoneNumber = newValue!,
                  // },
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      removeError(error: "Please Enter your phone number");
                    }
                    //  else if (emailValidatorRegExp.hasMatch(value)) {
                    //   removeError(error: "please Enter Valid Email");
                    // }
                    return null;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      addError(error: "Please Enter your phone number");
                      return "";
                    }
                    // else if (!emailValidatorRegExp.hasMatch(value)) {
                    //   addError(error: "please Enter Valid Email");
                    //   return "";
                    // }
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
                    labelText: "PhoneNumber",
                    hintText: "Enter your PhoneNumber",
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.amber,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  //keyboardType: TextInputType.emailAddress,
                  onSaved: (newValue) => address = newValue!,
                  // },
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      removeError(error: "please Enter your address");
                    }
                    //  else if (emailValidatorRegExp.hasMatch(value)) {
                    //   removeError(error: "please Enter Valid Email");
                    // }
                    return null;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      addError(error: "please Enter your address");
                      return "";
                    }
                    // else if (!emailValidatorRegExp.hasMatch(value)) {
                    //   addError(error: "please Enter Valid Email");
                    //   return "";
                    // }
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
                    labelText: "Address",
                    hintText: "Enter your Address",
                    prefixIcon: Icon(
                      Icons.location_city_outlined,
                      color: Colors.amber,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FormError(errors: errors),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: (() {
                    if (formKey.currentState!.validate()) {
                      //formKey.currentState!.save();
                      Navigator.pushNamed(
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
                    'CompleteProfile',
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
