import 'package:flutter/material.dart';
import 'package:portofolioku/components/components.dart';
import 'package:portofolioku/data/data_models.dart';

class PortofolioComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: Responsive.isDesktop(context)
          ? MediaQuery.of(context).size.height - 80
          : Responsive.isTablet(context)
              ? MediaQuery.of(context).size.height - 75
              : MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(
          left: Responsive.isDesktop(context) ? 100 : 25,
          right: Responsive.isDesktop(context) ? 100 : 25,
          top: 0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return PortofolioItem(
                  index: index,
                  urlApp: listData[index].urlApp,
                  title: listData[index].title,
                  imgUrl: "assets/images/" + listData[index].imageUrl);
            }, childCount: listData.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 5 / 5,
                crossAxisCount: !Responsive.isMobile(context) ? 3 : 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
          )
        ],
      ),
    );
  }
}
