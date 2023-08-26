import 'package:flutter/material.dart';

class ResposnsiveLayout extends StatelessWidget {
  final Widget mobilescreenlay;
  final Widget webscreenlay;
  const ResposnsiveLayout(
      {Key? key, required this.mobilescreenlay, required this.webscreenlay})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return webscreenlay;
          //web
        }
        return mobilescreenlay;
      },
    );
  }
}
