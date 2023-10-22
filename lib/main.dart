import 'package:flutter/material.dart';
import 'package:flutter_concepts/dark_light_them/screen.dart';
import 'package:flutter_concepts/dark_light_them/theme/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Concepts Library',
      theme: MyTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
