import 'package:flutter/material.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_auth.dart';

class drawerHome extends StatelessWidget {
  const drawerHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 243, 33),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 100, 30),
            child: InkWell(
              onTap: (() {
                Navigator.pushNamed(
                  context,
                  PageAuth.routerName,
                );
              }),
              child: Text(
                "Logout",
                style: TextStyle(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 255, 17, 17)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
