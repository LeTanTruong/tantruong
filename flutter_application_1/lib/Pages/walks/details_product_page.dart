import 'package:flutter/material.dart';

class DetailsProductPage extends StatelessWidget {
  static const routerName = "/DetailsProductPage.routerName";
  const DetailsProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(title: Text(arg["name"])),
    );
  }
}
