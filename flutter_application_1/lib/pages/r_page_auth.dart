import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/r_page_home.dart';

class PageAuth extends StatefulWidget {
  const PageAuth({
    Key? key,
  }) : super(key: key);

  @override
  State<PageAuth> createState() => _PageAuthState();
}

class _PageAuthState extends State<PageAuth> {
  bool showpass = false; ////4
  TextEditingController _usernameController = new TextEditingController();
////7
  TextEditingController _passwordController = new TextEditingController();
  var _userNameError = "Tài khoản không hợp lệ phải trên 6 ký tự ";
  var _passWordError = "Mật khẩu phải trên 6 ký tự với @";
  var _userInvalid = false;
  var _passInvalid = false; ////7
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
                  ////1
                  controller: _usernameController, ////8
                  decoration: InputDecoration(
                    labelText: 'USERNAME',
                    errorText: _userInvalid ? _userNameError : null, ////8
                    labelStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                    ),
                  ),
                ), ////1
                Stack(
                  ////2
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    TextField(
                      controller: _passwordController, ////8
                      obscureText: !showpass, ////5
                      ////obscureText dùng chữ sẽ biến thành các dấu chấm
                      decoration: InputDecoration(
                        errorText: _passInvalid ? _passWordError : null, ////8
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    InkWell(
                      ////6
                      onTap: (() {
                        setState(() {
                          showpass = !showpass;
                        });
                      }),
                      child: showpass
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ), ////6
                  ],
                ), ////2
                Padding(
                  ////3
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: ElevatedButton(
                    onPressed: (() {
                      ////9
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
                          ////10
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((_) => const PageHome()),
                              //muốn chuyển sang Mot5Category()
                            ),
                          );
                        } ////10
                      });
                    }), ////9
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 60),
                      side: BorderSide(
                          color: const Color.fromARGB(255, 255, 33, 33)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    //child: InkWell(
                    ////9
                    // onTap: (() {
                    //   setState(() {
                    //     if (_passwordController.text.length < 6 ||
                    //         !_passwordController.text
                    //             .contains(RegExp(r'[@]'))) {
                    //       _passInvalid = true;
                    //     } else {
                    //       _passInvalid = false;
                    //     }
                    //     if (_usernameController.text.length < 6) {
                    //       _userInvalid = true;
                    //     } else {
                    //       _userInvalid = false;
                    //     }
                    //     if (!_userInvalid && !_passInvalid) {
                    //       ////10
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: ((_) => const PageHome()),
                    //           //muốn chuyển sang Mot5Category()
                    //         ),
                    //       );
                    //     } ////10
                    //   });
                    // }),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 28),
                    ),
                    //), ////9
                  ),
                ), ////3
                Row(
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
