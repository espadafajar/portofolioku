import 'package:flutter/material.dart';
import 'package:portofolioku/components/coloring.dart';
import 'package:portofolioku/components/components.dart';
import 'package:portofolioku/data/data_models.dart';
import 'package:portofolioku/providers/providers.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPortofolioComponents extends StatelessWidget {
  void klikUrl(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: HexColor.fromHex("#333333")),
      child: !Responsive.isMobile(context)
          ? Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .7,
                        margin: EdgeInsets.symmetric(
                            vertical: Responsive.isDesktop(context) ? 40 : 15,
                            horizontal: Responsive.isTablet(context) ? 20 : 0),
                        child: Image.asset(
                          "assets/images/" +
                              listData[Provider.of<WebProvider>(context)
                                      .selectedIndex]
                                  .imageUrl +
                              ".jpg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Responsive.isDesktop(context) ? 20 : 20,
                        vertical: Responsive.isTablet(context) ? 10 : 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listData[Provider.of<WebProvider>(context)
                                  .selectedIndex]
                              .title
                              .toUpperCase(),
                          style: TextStyle(
                              fontSize: Responsive.isDesktop(context) ? 50 : 35,
                              color: Colors.white),
                        ),
                        Container(
                          width: 250,
                          height: 10,
                          decoration:
                              BoxDecoration(color: HexColor.fromHex("#f6ea00")),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ButtonTheme(
                          minWidth: 150,
                          height: 40,
                          child: FlatButton(
                            child: Text(
                              "Lihat Aplikasi",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                            onPressed: () {
                              klikUrl(listData[Provider.of<WebProvider>(context,
                                          listen: false)
                                      .selectedIndex]
                                  .urlApp);
                            },
                            color: Colors.lightGreenAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  flex: 4,
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .7,
                  child: Image.asset(
                    "assets/images/" +
                        listData[
                                Provider.of<WebProvider>(context).selectedIndex]
                            .imageUrl +
                        '.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        listData[
                                Provider.of<WebProvider>(context).selectedIndex]
                            .title
                            .toUpperCase(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Container(
                        width: 250,
                        height: 5,
                        decoration:
                            BoxDecoration(color: HexColor.fromHex("#f6ea00")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonTheme(
                        minWidth: 150,
                        height: 40,
                        child: FlatButton(
                          child: Text(
                            "Lihat Aplikasi",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                          onPressed: () {
                            klikUrl(listData[Provider.of<WebProvider>(context,
                                        listen: false)
                                    .selectedIndex]
                                .urlApp);
                          },
                          color: Colors.lightGreenAccent,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
