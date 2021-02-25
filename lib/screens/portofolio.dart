import 'package:flutter/material.dart';
import 'package:portofolioku/components/components.dart';

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex("#333333"),
      body: PortofolioComponents(),
    );
  }
}
