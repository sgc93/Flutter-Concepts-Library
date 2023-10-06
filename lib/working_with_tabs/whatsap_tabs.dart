import 'package:flutter/material.dart';

class WhatSapTab extends StatelessWidget {
  const WhatSapTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(),
    );
  }
}
