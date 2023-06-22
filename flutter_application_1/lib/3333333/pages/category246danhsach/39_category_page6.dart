import 'package:flutter/material.dart';

class CategoryPage6 extends StatefulWidget {
  @override
  State<CategoryPage6> createState() => _CategoryPage6State();
}

class _CategoryPage6State extends State<CategoryPage6> {
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
                child: const Text('mua hàng 6'),
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
