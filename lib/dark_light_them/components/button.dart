import 'package:flutter/material.dart';
import 'package:flutter_concepts/dark_light_them/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class GestureBtn extends StatelessWidget {
  final Widget child;
  const GestureBtn({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return GestureDetector(
      onTap: () {
        themeProvider.toggleTheme();
      },
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Center(child: child),
      ),
    );
  }
}
