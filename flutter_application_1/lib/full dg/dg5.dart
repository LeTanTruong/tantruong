import 'package:flutter/material.dart';
import 'dg6.dart';
import 'dg7.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Email(),
                    const SizedBox(height: 30),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey,

                        hintStyle: const TextStyle(
                            fontSize: 20.0, color: Colors.white),
                        hintText: 'Username',
                        contentPadding: const EdgeInsets.all(20.0),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const PassWord(),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Confirm PassWord',
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('success')),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(
                            double.infinity,
                            50,
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 7, 255, 28),
                          elevation: 0),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 255, 255, 255),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('success')),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(
                            double.infinity,
                            50,
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 7, 255, 28),
                          elevation: 0),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 255, 255, 255),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextButton(
                        ////nút nhấn không màu
                        onPressed: () {},
                        child: const Text('Registered? log in'))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
