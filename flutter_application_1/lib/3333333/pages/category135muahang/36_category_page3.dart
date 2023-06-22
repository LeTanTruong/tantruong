import 'package:flutter/material.dart';

class CategoryPage3 extends StatefulWidget {
  @override
  State<CategoryPage3> createState() => _CategoryPage3State();
}

class _CategoryPage3State extends State<CategoryPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 238, 7),
      body: Container(
        child: Center(
          ////2 pop
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                ////2 pop
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('hàng đã mua'),
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
