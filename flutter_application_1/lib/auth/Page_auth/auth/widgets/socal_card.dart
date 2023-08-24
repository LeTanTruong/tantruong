import 'package:flutter/material.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    super.key,
    required this.icon,
  });
  final String icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(15),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: Colors.blue),
        ),
        child: Image.asset(
          icon,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
