import 'package:flutter/material.dart';
import 'package:portofolioku/components/components.dart';
import 'package:portofolioku/providers/providers.dart';
import 'package:provider/provider.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Provider.of<WebProvider>(context, listen: false)
                    .setIndex(index: 0);
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Provider.of<WebProvider>(context, listen: false)
                              .setIndex(index: 0);
                        }),
                    Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          color: Provider.of<WebProvider>(context).navIndex == 0
                              ? HexColor.fromHex("#f6ea00")
                              : Colors.transparent),
                    )
                  ],
                ),
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Provider.of<WebProvider>(context, listen: false)
                    .setIndex(index: 1);
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.assessment_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Provider.of<WebProvider>(context, listen: false)
                              .setIndex(index: 1);
                        }),
                    Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          color: Provider.of<WebProvider>(context).navIndex == 1
                              ? HexColor.fromHex("#f6ea00")
                              : Colors.transparent),
                    )
                  ],
                ),
              ),
            ),
            flex: 1,
          ),
          // Expanded(
          //   child: GestureDetector(
          //     onTap: () {
          //       Provider.of<WebProvider>(context, listen: false)
          //           .setIndex(index: 2);
          //     },
          //     child: Container(
          //       decoration: BoxDecoration(color: Colors.transparent),
          //       child: Column(
          //         children: [
          //           IconButton(
          //               icon: Icon(
          //                Icons.contact_mail,
          //                 color: Colors.white,
          //               ),
          //               onPressed: () {
          //                 Provider.of<WebProvider>(context, listen: false)
          //                     .setIndex(index: 2);
          //               }),
          //           Spacer(),
          //           Container(
          //             width: MediaQuery.of(context).size.width,
          //             height: 10,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.only(
          //                     topLeft: Radius.circular(15),
          //                     topRight: Radius.circular(15)),
          //                 color: Provider.of<WebProvider>(context).navIndex == 2
          //                     ? HexColor.fromHex("#f6ea00")
          //                     : Colors.transparent),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          //   flex: 1,
          // ),
        ],
      ),
    );
  }
}
