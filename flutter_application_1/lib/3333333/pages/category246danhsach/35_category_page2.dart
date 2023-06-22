import 'package:flutter/material.dart';
import 'package:flutter_application_1/3333333/router/34_routes.dart';

class CategoryPage2 extends StatefulWidget {
  @override
  State<CategoryPage2> createState() => _CategoryPage2State();
}

class _CategoryPage2State extends State<CategoryPage2> {
  // final name; ////10
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 119, 7),
      body: Container(
        child: Center(
          ////2 pop
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                ////1
                onPressed: () {
                  Navigator.pushNamed(context, RouterName.categoryPage4); ////1
                },
                child: const Text('danh sách a b c'),
              ),
              ElevatedButton(
                ////1
                onPressed: () {
                  Navigator.pushNamed(context, RouterName.categoryPage6); ////1
                },
                child: const Text('mua hàng abc'),
              ),
            ],
          ), ////1

          ////2 pop
        ),
      ),

      //////////////Scafflod
    );
  }
}
