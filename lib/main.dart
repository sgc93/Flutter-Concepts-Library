import 'package:flutter/material.dart';
import 'package:flutter_concepts/dark_light_them/provider/theme_provider.dart';
import 'package:flutter_concepts/dark_light_them/screen.dart';
import 'package:flutter_concepts/dark_light_them/theme/my_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Concepts Library',
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
