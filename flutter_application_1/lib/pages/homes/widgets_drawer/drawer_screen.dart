import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/page_auth/login_page.dart';

class DrawerScreen extends StatelessWidget {
  static const routerName = "/DrawerScreen.routerName";
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.amber,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const Divider(),
              const SizedBox(
                width: 200,
                height: 200,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                onTap: () {},
                selectedColor: Colors.amber,
                selected: true,
                contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                leading: const Icon(Icons.group),
                title: const Text(
                  "UserName",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
              ListTile(
                onTap: () {},
                selectedColor: Colors.amber,
                selected: true,
                contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                leading: const Icon(Icons.group),
                title: const Text(
                  "UserEmail",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
              ListTile(
                onTap: () {},
                selectedColor: Colors.amber,
                selected: true,
                contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                leading: const Icon(Icons.group),
                title: const Text(
                  "Groups",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
              ListTile(
                onTap: () async {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Logout"),
                        content: const Text("Are you sure you want to logout?"),
                        actions: [
                          IconButton(
                            onPressed: (() {
                              Navigator.pop(context);
                            }),
                            icon: const Icon(
                              Icons.cancel,
                              size: 30,
                              color: Colors.blue,
                            ),
                          ),
                          IconButton(
                            onPressed: (() {
                              Navigator.pushReplacementNamed(
                                  context, LoginPage.routerName);
                            }),
                            icon: const Icon(
                              Icons.done,
                              size: 30,
                              color: Color.fromARGB(255, 110, 243, 33),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                selectedColor: Colors.amber,
                selected: true,
                contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                leading: const Icon(Icons.exit_to_app),
                title: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
