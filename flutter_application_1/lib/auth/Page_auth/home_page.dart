import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer_screen.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  static const routerName = "/HomePage.routerName";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("HomePage"),
          actions: [
            IconButton(
              onPressed: (() {
                //await FirebaseAuth.instance.signOut();
              }),
              icon: Icon(Icons.login),
            ),
          ],
        ),
        drawer: DrawerScreen(),
      ),
    );
  }
}
