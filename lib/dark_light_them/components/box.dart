import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Widget child;
  const Box({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Center(child: child),
      ),
    );
  }
}
