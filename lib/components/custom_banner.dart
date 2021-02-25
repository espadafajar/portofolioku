import 'package:flutter/material.dart';
import 'package:portofolioku/components/components.dart';
import 'package:portofolioku/providers/web_providers.dart';
import 'package:provider/provider.dart';
import 'package:portofolioku/extension/hover_extension.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomBanner extends StatelessWidget {
  void klikEmail({url}) async {
    if (await canLaunch(url)) {
      await launch(url.toString());
    } else {
      print("gagal");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: Responsive.isDesktop(context)
          ? MediaQuery.of(context).size.height - 80
          : Responsive.isTablet(context)
              ? MediaQuery.of(context).size.height - 75
              : MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: Responsive.isDesktop(context)
                ? MediaQuery.of(context).size.height - 80
                : Responsive.isTablet(context)
                    ? MediaQuery.of(context).size.height - 75
                    : MediaQuery.of(context).size.height,
            child: !Responsive.isMobile(context)
                ? Row(
                    children: [
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/porofil.png"),
                                    fit: BoxFit.cover)),
                          ),
                          flex: 3),
                      Expanded(
                          child: AnimatedOpacity(
                            opacity:
                                Provider.of<WebProvider>(context).navIndex == 0
                                    ? 1
                                    : 1,
                            duration: Duration(seconds: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              padding: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                color: HexColor.fromHex("#333333"),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Education".toUpperCase(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  Responsive.isDesktop(context)
                                                      ? 20
                                                      : 17),
                                        ),
                                        Container(
                                          width: 120,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              color:
                                                  HexColor.fromHex("#f6ea00")),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "S1 Informatic Engineering",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  ":",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                            Expanded(
                                                flex: 5,
                                                child: Text(
                                                  "University of Muhammadiyah Malang",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 7.5,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(.5)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "SKILLS".toUpperCase(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  Responsive.isDesktop(context)
                                                      ? 20
                                                      : 17),
                                        ),
                                        Container(
                                          width: 120,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              color:
                                                  HexColor.fromHex("#f6ea00")),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "Flutter",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "C# Unity",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "Codeigniter",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "Vue js",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 7.5,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(.5)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Experience".toUpperCase(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  Responsive.isDesktop(context)
                                                      ? 20
                                                      : 17),
                                        ),
                                        Container(
                                          width: 120,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              color:
                                                  HexColor.fromHex("#f6ea00")),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "Edukasimu.com",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  ":",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 5,
                                                child: Text(
                                                  "Unity developer",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "TOG Indonesia",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  ":",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 5,
                                                child: Text(
                                                  "Unity developer",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "Kominfotik Sumbawa",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  ":",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 5,
                                                child: Text(
                                                  "Software Developer",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "Freelancer",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  ":",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 5,
                                                child: Text(
                                                  "Unity App & Flutter App",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Contact".toUpperCase(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  Responsive.isDesktop(context)
                                                      ? 20
                                                      : 17),
                                        ),
                                        Container(
                                          width: 120,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              color:
                                                  HexColor.fromHex("#f6ea00")),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "Email",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  ":",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                            Expanded(
                                                flex: 5,
                                                child: FlatButton(
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "bayufajar555@gmail.com",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .lightGreenAccent,
                                                            fontSize: Responsive
                                                                    .isDesktop(
                                                                        context)
                                                                ? 20
                                                                : 15),
                                                      ),
                                                    ],
                                                  ),
                                                  onPressed: () {
                                                    klikEmail(
                                                        url:
                                                            "mailto:bayufajar555@gmail.com?subject=isiapaaja");
                                                  },
                                                ).showCursorOnHover.moveUpHandler),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Text(
                                                  "WhatsApp",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 20
                                                              : 17),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  ":",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                            Expanded(
                                                flex: 5,
                                                child: FlatButton(
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "+62 8123 5620 886",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .lightGreenAccent,
                                                            fontSize: Responsive
                                                                    .isDesktop(
                                                                        context)
                                                                ? 20
                                                                : 15),
                                                      ),
                                                    ],
                                                  ),
                                                  onPressed: () {
                                                    klikEmail(
                                                        url:
                                                            "http://wa.me/+6281235620886");
                                                  },
                                                )
                                                    .showCursorOnHover
                                                    .moveUpHandler),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          flex: 4),
                    ],
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/porofil.png"),
                                  fit: BoxFit.cover)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(),
                              Text(
                                "MY NAME IS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                              Text(
                                "BAYU FAJAR PRATAMA",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: HexColor.fromHex("#f6ea00")),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Text(
                                  "I'M A FLUTTER DEVELOPER",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 12),
                                ),
                              ).showCursorOnHover.moveUpHandler,
                              SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Education".toUpperCase(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    width: 120,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: HexColor.fromHex("#f6ea00")),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "S1 Informatic Engineering",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            ":",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 5,
                                          child: Text(
                                            "University of Muhammadiyah Malang",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 7.5,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(.5)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "SKILLS".toUpperCase(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    width: 120,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: HexColor.fromHex("#f6ea00")),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "Flutter",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "C# Unity",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "Codeigniter",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "Vue js",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 7.5,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(.5)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Experience".toUpperCase(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    width: 120,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: HexColor.fromHex("#f6ea00")),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "Edukasimu.com",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            ":",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 5,
                                          child: Text(
                                            "Unity Developer",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "TOG Indonesia",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            ":",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 5,
                                          child: Text(
                                            "Unity Developer",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "Kominfotik Sumbawa",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            ":",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 5,
                                          child: Text(
                                            "Software Developer",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "Freelancer",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            ":",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 5,
                                          child: Text(
                                            "Unity App + Flutter App",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 7.5,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(.5)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Contact".toUpperCase(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    width: 120,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: HexColor.fromHex("#f6ea00")),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "Email",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            ":",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 5,
                                          child: GestureDetector(
                                            onTap: () {
                                              klikEmail(
                                                  url:
                                                      "mailto:bayufajar555@gmail.com?subject=isiapaaja");
                                            },
                                            child: Text(
                                              "bayufajar555@gmail.com",
                                              style: TextStyle(
                                                  color:
                                                      Colors.lightGreenAccent),
                                            ),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            "WhatsApp",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            ":",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Expanded(
                                          flex: 5,
                                          child: GestureDetector(
                                            onTap: () {
                                              klikEmail(
                                                  url:
                                                      "http://wa.me/+6281235620886");
                                            },
                                            child: Text(
                                              "+62 8123 5620 886",
                                              style: TextStyle(
                                                  color:
                                                      Colors.lightGreenAccent),
                                            ),
                                          )),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        )
                      ],
                    ),
                  ),
          ),
          !Responsive.isMobile(context)
              ? Positioned(
                  bottom: Responsive.isDesktop(context)
                      ? 50
                      : Responsive.isTablet(context)
                          ? 50
                          : 0,
                  left: Responsive.isDesktop(context)
                      ? 200
                      : Responsive.isTablet(context)
                          ? 50
                          : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MY NAME IS",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: Responsive.isDesktop(context)
                                ? 25
                                : Responsive.isTablet(context)
                                    ? 20
                                    : 15),
                      ),
                      Text(
                        "BAYU FAJAR PRATAMA",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: Responsive.isDesktop(context)
                                ? 35
                                : Responsive.isTablet(context)
                                    ? 30
                                    : 25),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("click");
                        },
                        child: Container(
                          decoration:
                              BoxDecoration(color: HexColor.fromHex("#f6ea00")),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Text(
                            "I'M A FLUTTER DEVELOPER",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: Responsive.isDesktop(context)
                                    ? 16
                                    : Responsive.isTablet(context)
                                        ? 14
                                        : 12),
                          ),
                        ),
                      ).showCursorOnHover.moveUpHandler,
                    ],
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
