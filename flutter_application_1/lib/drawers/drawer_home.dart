import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/product_page.dart';

class DrawerHome extends StatelessWidget {
  static const routerName = "DrawerHome.routerName";
  const DrawerHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 1, 185, 176),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                onTap: () async {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                            "Logout",
                            textAlign: TextAlign.center,
                          ),
                          content:
                              const Text("Are you sure you want to logout?"),
                          actions: [
                            IconButton(
                              onPressed: (() {
                                Navigator.pop(context);
                              }),
                              icon: const Icon(
                                Icons.cancel,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: (() async {
                                await FirebaseAuth.instance.signOut();
                                Navigator.pop(context);
                              }),
                              icon: const Icon(
                                Icons.done,
                                color: Color.fromARGB(255, 33, 243, 96),
                                size: 30,
                              ),
                            ),
                          ],
                        );
                      });
                }, ////7
                selectedColor: const Color.fromARGB(255, 255, 255, 255),
                selected: true, ////7
                contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                leading: const Icon(Icons.exit_to_app),
                title: const Text(
                  "Logout",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
                  //textAlign: TextAlign.center,
                ),
              ),
              Divider(
                height: 4,
                color: Colors.white,
              ),
              InkWell(
                onTap: (() {
                  Navigator.pushNamed(
                    context,
                    ProductPage.routerName,
                  );
                }),
                child: const Text(
                  "NumberProduct",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
