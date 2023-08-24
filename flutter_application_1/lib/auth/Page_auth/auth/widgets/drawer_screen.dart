import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.amber,
                      fontWeight: FontWeight.w400),
                ),
              ), ////1
              Divider(),

              ListTile(
                onTap: () {},
                selectedColor: Colors.amber,
                selected: true,
                contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                leading: Icon(Icons.group),
                title: Text(
                  "UserName",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
              ListTile(
                onTap: () {},
                selectedColor: Colors.amber,
                selected: true,
                contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                leading: Icon(Icons.group),
                title: Text(
                  "UserEmail",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
              ListTile(
                onTap: () {},
                selectedColor: Colors.amber,
                selected: true,
                contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                leading: Icon(Icons.group),
                title: Text(
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
                          title: Text("Logout"),
                          content: Text("Are you sure you want to logout?"),
                          actions: [
                            IconButton(
                              onPressed: (() {
                                Navigator.pop(context);
                              }),
                              icon: Icon(
                                Icons.cancel,
                                size: 30,
                                color: Colors.blue,
                              ),
                            ),
                            IconButton(
                              onPressed: (() async {
                                await FirebaseAuth.instance.signOut();
                                Navigator.pop(context);
                              }),
                              icon: Icon(
                                Icons.done,
                                size: 30,
                                color: const Color.fromARGB(255, 110, 243, 33),
                              ),
                            ),
                          ],
                        );
                      });
                },
                selectedColor: Colors.amber,
                selected: true,
                contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                leading: Icon(Icons.exit_to_app),
                title: Text(
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
