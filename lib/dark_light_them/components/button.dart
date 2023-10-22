import 'package:flutter/material.dart';

class GestureBtn extends StatelessWidget {
  final Widget child;
  const GestureBtn({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
