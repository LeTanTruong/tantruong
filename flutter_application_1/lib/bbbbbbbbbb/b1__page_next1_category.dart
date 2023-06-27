//lib\bbbbbbbbbb\b1__page_next_category.dart
import 'package:flutter/material.dart';

class PageNextCategory extends StatelessWidget {
  const PageNextCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ffff',
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('ddvdv'),
            ],
          ),
        ),
      ),
    );
  }
}
