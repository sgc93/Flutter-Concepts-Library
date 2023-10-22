import 'package:flutter/material.dart';
import 'package:flutter_concepts/dark_light_them/provider/theme_provider.dart';
import 'package:flutter_concepts/dark_light_them/screen.dart';
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
    final theme = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Concepts Library',
      theme: theme.getTheme,
      home: const HomeScreen(),
    );
  }
}
