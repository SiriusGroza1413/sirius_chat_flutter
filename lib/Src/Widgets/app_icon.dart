import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('images/icono.png'),
        const Text(
          'VS Chat App',
          style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
