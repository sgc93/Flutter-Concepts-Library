import 'package:flutter/material.dart';
import 'package:flutter_concepts/responsiveness/layoutBuilder/dimensions.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveWidget({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < widthBreakPoint) {
        return mobileBody;
      } else {
        return desktopBody;
      }
    });
  }
}
