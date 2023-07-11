import 'package:flutter/material.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_auth.dart';

class PageRegister extends StatelessWidget {
  static const routerName = "pageRegister.routerName";
  const PageRegister({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextFormField(
                decoration: InputDecoration(
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
                  hintText: "UserName",
                  contentPadding: EdgeInsets.all(20.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextFormField(
                decoration: InputDecoration(
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
                decoration: InputDecoration(
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
                onPressed: () {
                  Navigator.pushNamed(
                    context, PageAuth.routerName,
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
