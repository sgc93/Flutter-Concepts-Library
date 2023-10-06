import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        leading: const Icon(Icons.desktop_windows),
        title: const Text('DESKTOP LAYOUT'),
      ),
    );
  }
}
