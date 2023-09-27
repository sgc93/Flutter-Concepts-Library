import 'package:flutter/material.dart';
import 'package:flutter_concepts/snack_bar/snack_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Concepts Library',
      home: SnackBarWidget(),
    );
  }
}
