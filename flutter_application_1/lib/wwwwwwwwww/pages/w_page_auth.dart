import 'package:flutter/material.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_home.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_register.dart';
import 'package:flutter_application_1/wwwwwwwwww/provider/w_provider_auth.dart';
import 'package:provider/provider.dart';

class PageAuth extends StatefulWidget {
  static const routerName = "PageAuth.routerName";
  PageAuth({
    super.key,
  });

  @override
  State<PageAuth> createState() => _PageAuthState();
}

class _PageAuthState extends State<PageAuth> {
  TextEditingController _emailController = TextEditingController();
////7
  TextEditingController _passwordController = TextEditingController();
  var _emailError = "Tài khoản không hợp lệ phải trên 6 ký tự ";
  var _passwordError = "Mật khẩu phải trên 6 ký tự với @";
  var _emailInvalid = false;
  var _passwordInvalid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("PageUath"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  errorText: _emailInvalid ? _emailError : null,
                  // border: InputBorder.none,
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey,

                  hintStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                  hintText: "Email",
                  contentPadding: EdgeInsets.all(20.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  errorText: _passwordInvalid ? _passwordError : null,
                  // border: InputBorder.none,
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey,

                  hintStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                  hintText: "Password",
                  contentPadding: EdgeInsets.all(20.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: ElevatedButton(
                onPressed: (() {
                  setState(() {
                    if (_passwordController.text.length < 6 ||
                        !_passwordController.text.contains(RegExp(r'[@]'))) {
                      _passwordInvalid = true;
                    } else {
                      _passwordInvalid = false;
                    }
                    if (_emailController.text.length < 6) {
                      _emailInvalid = true;
                    } else {
                      _emailInvalid = false;
                    }
                    if (!_emailInvalid && !_passwordInvalid) {
                      Navigator.pushReplacementNamed(
                        context,
                        PageHome.routerName,
                      );
                    }
                  });
                  //context.read<ProviderAuth>().login();
                }),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(
                      double.infinity,
                      50,
                    ),
                    backgroundColor: const Color.fromARGB(255, 7, 205, 255),
                    elevation: 0),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 243, 205, 33)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context, PageRegister.routerName,
                    //arguments: {'title: index'}
                  );
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(
                      double.infinity,
                      50,
                    ),
                    backgroundColor: const Color.fromARGB(255, 255, 36, 7),
                    elevation: 0),
                child: const Text(
                  'register',
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 243, 205, 33)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
