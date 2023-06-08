import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  const Email({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: InputDecoration(
        // border: InputBorder.none,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey,
        hintStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
        hintText: 'Email',
        contentPadding: const EdgeInsets.all(20.0),
      ),
    );
  }
}
