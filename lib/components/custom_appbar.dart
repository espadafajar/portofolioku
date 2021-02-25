import 'package:flutter/material.dart';
import 'package:portofolioku/components/components.dart';
import 'package:portofolioku/providers/providers.dart';
import 'package:portofolioku/routes_name.dart';
import 'package:provider/provider.dart';
import 'package:portofolioku/extension/hover_extension.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: Responsive.isDesktop(context) ? 80 : 75,
        decoration: BoxDecoration(color: HexColor.fromHex("#333333"), boxShadow: [BoxShadow(
          blurRadius: 3,
          offset: Offset(0,3),
          color: HexColor.fromHex("#121212")
        )]),
        padding: EdgeInsets.symmetric(horizontal: Responsive.isDesktop(context) ? 50 : 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Portofolioku".toUpperCase(),
              style: TextStyle(fontSize: 26, color: Colors.white),
            ).showCursorOnHover.moveUpHandler,
            Row(
              children: [
                NavItem(
                  routesName: RoutesName.home,
                  index: 0,
                  isActive: Provider.of<WebProvider>(context).navIndex == 0 ? true : false,
                  title: "My Data",
                  ukuran: 17.5,
                ).showCursorOnHover.moveUpHandler,
                SizedBox(width: 25,),
                NavItem(
                  routesName: RoutesName.portofolio,
                  index: 1,
                  isActive: Provider.of<WebProvider>(context).navIndex == 1 ? true : false,
                  title: "Portofolio",
                  ukuran: 17.5,
                ).showCursorOnHover.moveUpHandler,
                // NavItem(
                //   routesName: RoutesName.kontak,
                //   index: 2,
                //   isActive: Provider.of<WebProvider>(context).navIndex == 2 ? true : false,
                //   title: "Kontak",
                //   ukuran: 17.5,
                // ).showCursorOnHover.moveUpHandler,
              ],
            )
          ],
        ));
  }
}
