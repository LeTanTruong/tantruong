import 'package:flutter/material.dart';

class Page1Part1 extends StatefulWidget {
  const Page1Part1({
    Key? key,
  }) : super(key: key);

  @override
  State<Page1Part1> createState() => _Page1Part1State();
}

class _Page1Part1State extends State<Page1Part1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, ////bỏ nút chuyển trang (<-) trở về
        centerTitle: true,
        title: Text('data'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Text('data'),
        ),
      ),
    );
  }
}
