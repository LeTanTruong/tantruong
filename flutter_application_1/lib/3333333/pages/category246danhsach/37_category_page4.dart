import 'package:flutter/material.dart';

class CategoryPage4 extends StatefulWidget {
  @override
  State<CategoryPage4> createState() => _CategoryPage4State();
}

class _CategoryPage4State extends State<CategoryPage4> {
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
                child: const Text('danh sách đã mua'),
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
