import 'package:flutter/material.dart';
import 'package:flutter_application_1/bbbbbbbbbb/b1_page1_part1.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showpass = false;
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  var _userNameError = "Tài khoản không hợp lệ phải trên 6 ký tự ";
  var _passWordError = "Mật khẩu phải trên 6 ký tự với @";
  var _userInvalid = false;
  var _passInvalid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                  ),
                ),
                const Text(
                  'cscsdvdfbfbfdgbcb fd',
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
                const Text(
                  'hello',
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'USERNAME',
                    errorText: _userInvalid ? _userNameError : null,
                    labelStyle: const TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                    ),
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    TextField(
                      controller: _passwordController,
                      obscureText: !showpass,
                      ////obscureText dùng chữ sẽ biến thành các dấu chấm
                      decoration: InputDecoration(
                        errorText: _passInvalid ? _passWordError : null,
                        labelText: 'PASSWORD',
                        labelStyle: const TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (() {
                        setState(() {
                          showpass = !showpass;
                        });
                      }),
                      child: showpass
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(120, 0, 50, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(width: 2, color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: InkWell(
                      onTap: (() {
                        setState(() {
                          if (_passwordController.text.length < 6 ||
                              !_passwordController.text
                                  .contains(RegExp(r'[@]'))) {
                            _passInvalid = true;
                          } else {
                            _passInvalid = false;
                          }
                          if (_usernameController.text.length < 6) {
                            _userInvalid = true;
                          } else {
                            _userInvalid = false;
                          }
                          if (!_userInvalid && !_passInvalid) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((_) => const Page1Part1()),
                                //muốn chuyển sang Mot5Category()
                              ),
                            );
                          }
                        });
                      }),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New User? sign up',
                      style: TextStyle(fontSize: 15, color: Colors.amber),
                    ),
                    Text(
                      'forgot PassWord',
                      style: TextStyle(fontSize: 15, color: Colors.amber),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
