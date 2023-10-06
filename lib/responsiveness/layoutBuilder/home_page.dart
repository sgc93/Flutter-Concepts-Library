import 'package:flutter/material.dart';
import 'package:flutter_concepts/responsiveness/layoutBuilder/layout_builder.dart';
import 'package:flutter_concepts/responsiveness/layoutBuilder/layouts/desktop_body.dart';
import 'package:flutter_concepts/responsiveness/layoutBuilder/layouts/mobile_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveWidget(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
