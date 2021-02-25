import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 650 &&
      MediaQuery.of(context).size.width < 1200;
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
