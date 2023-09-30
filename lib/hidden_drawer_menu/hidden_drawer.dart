import 'package:flutter/material.dart';
import 'package:flutter_concepts/hidden_drawer_menu/pages/home.dart';
import 'package:flutter_concepts/hidden_drawer_menu/pages/setting_page.dart';
import 'package:flutter_concepts/hidden_drawer_menu/pages/theme_page.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  final TextStyle _myColor = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  final TextStyle _mySelected = const TextStyle(
    color: Color.fromRGBO(83, 185, 234, 1),
    fontSize: 16,
  );

  final Color _selectLineColor = const Color.fromRGBO(83, 185, 234, 1);

  final List<ScreenHiddenDrawer> _screens = [];

  @override
  void initState() {
    _screens.add(
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home',
          baseStyle: _myColor,
          selectedStyle: _mySelected,
          colorLineSelected: _selectLineColor,
        ),
        const Home(),
      ),
    );
    _screens.add(
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'ThemePage',
          baseStyle: _myColor,
          selectedStyle: _mySelected,
          colorLineSelected: _selectLineColor,
        ),
        const ThemePage(),
      ),
    );
    _screens.add(
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings',
          baseStyle: _myColor,
          selectedStyle: _mySelected,
          colorLineSelected: _selectLineColor,
        ),
        const SettingPage(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _screens,
      slidePercent: 40,
      backgroundColorAppBar: const Color.fromRGBO(53, 58, 64, 1),
      contentCornerRadius: 23,
      backgroundColorMenu: const Color.fromRGBO(53, 58, 64, 1),
      elevationAppBar: 0,
    );
  }
}
