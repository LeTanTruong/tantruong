import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/homes/searchs/book.dart';

class BookPage extends StatelessWidget {
  final Book book; ////9
  const BookPage({super.key, required this.book}); ////9

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              ////10
              book.urlImage,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Text(book.name), ////10
          ],
        ),
      ),
    );
  }
}
