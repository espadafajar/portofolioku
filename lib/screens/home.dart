import 'package:flutter/material.dart';
import 'package:portofolioku/components/components.dart';
import 'package:portofolioku/providers/web_providers.dart';
import 'package:portofolioku/screens/screens.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Widget> listScreen = [Beranda(), Portofolio(), Kontak(), DetailPortofolio()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !Responsive.isMobile(context)
          ? PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 80),
              child: CustomAppBar(),
            )
          : null,
      body: listScreen.elementAt(Provider.of<WebProvider>(context).navIndex),
        bottomNavigationBar: Responsive.isMobile(context)
            ? Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(color: HexColor.fromHex("#333333"), boxShadow: [
                  BoxShadow(
                      blurRadius: 3,
                      offset: Offset(0, -3),
                      color: Colors.black.withOpacity(.5))
                ]),
                child: CustomBottomBar(),
              )
            : SizedBox.shrink(),
    );
  }
}
