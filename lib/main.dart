import 'package:flutter/material.dart';
import 'package:flutter_concepts/working_with_tabs/whatsap_tabs.dart';

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
      home: WhatSapTab(),
    );
  }
}
