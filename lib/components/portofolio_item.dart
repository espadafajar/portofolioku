import 'package:flutter/material.dart';
import 'package:portofolioku/components/components.dart';
import 'package:portofolioku/providers/providers.dart';
import 'package:portofolioku/screens/screens.dart';
import 'package:portofolioku/extension/hover_extension.dart';
import 'package:provider/provider.dart';

class PortofolioItem extends StatelessWidget {
  final int index;
  final String imgUrl;
  final String title;
  final String urlApp;
  PortofolioItem({@required this.urlApp, @required this.imgUrl, this.title, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imgUrl + ".jpg"), fit: BoxFit.cover)),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.black.withOpacity(.5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: Responsive.isDesktop(context) ? 35 : 20),
            ),
            FlatButton(
              color: HexColor.fromHex("#f6ea00"),
              child: Text("LIHAT", style: TextStyle(fontSize: Responsive.isDesktop(context) ? 20 : 16, color: Colors.black),),
              onPressed: () {
                Provider.of<WebProvider>(context, listen: false).selectItemIndex(index);
                Provider.of<WebProvider>(context, listen: false).setIndex(index: 3);
              },
            ).showCursorOnHover.moveUpHandler
          ],
        ),
      ),
    );
  }
}
