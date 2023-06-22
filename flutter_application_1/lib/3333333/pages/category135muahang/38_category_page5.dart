import 'package:flutter/material.dart';

class CategoryPage5 extends StatefulWidget {
  @override
  State<CategoryPage5> createState() => _CategoryPage5State();
}

class _CategoryPage5State extends State<CategoryPage5> {
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
                child: const Text('danh sách mua 5'),
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
