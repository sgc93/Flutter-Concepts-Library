import 'package:flutter/material.dart';
import 'package:flutter_concepts/dark_light_them/components/box.dart';
import 'package:flutter_concepts/dark_light_them/components/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text(
          'Theme Mode',
          style: TextStyle(
            color: Colors.grey.shade200,
          ),
        ),
      ),
      body: Box(
        child: GestureBtn(
          child: Text(
            'Change Theme',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade900,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
