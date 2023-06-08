import 'package:flutter/material.dart';

class PassWord extends StatelessWidget {
  const PassWord({
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
      decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'PassWord',
          fillColor: Colors.amber),
    );
  }
}
