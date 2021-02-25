import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portofolioku/components/components.dart';
import 'package:portofolioku/providers/providers.dart';
import 'package:provider/provider.dart';

class NavItem extends StatelessWidget {
  final bool isActive;
  final String title;
  final double ukuran;
  final int index;
  final String routesName;
  NavItem(
      {@required this.title,
      @required this.ukuran,
      @required this.isActive,
      @required this.index,
      @required this.routesName});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () {
        Provider.of<WebProvider>(context, listen: false).setIndex(index: index);
        // Modular.to.pushNamed(routesName);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
                color: isActive ? Colors.white : Colors.white.withOpacity(.5),
                fontSize: ukuran,
                fontWeight: FontWeight.w600),
          ),
          Container(
            width: 50,
            height: 5,
            decoration: BoxDecoration(
                color: isActive
                    ? HexColor.fromHex("#f6ea00")
                    : Colors.transparent),
          )
        ],
      ),
    );
  }
}
