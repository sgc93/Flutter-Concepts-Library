import 'package:flutter/material.dart';
import 'package:flutter_concepts/login_form/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Concepts Library',
      home: LoginPage(),
    );
  }
}
