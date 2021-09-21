import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/homelightEmptyScreen.dart';
import 'package:slatable_mobile/shared/const.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), // here the desired height
          child: back(context, HexColor("#F3F6FC"), Colors.black)

          // backgroundColor: Color(0xe1f5fe).withOpacity(1.0),
          ),
      body: SingleChildScrollView(
        child: Container(
          height: contextHeight(context) - 140,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              createNavHead("Allow Notifications"),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 105,
                    width: 105,
                  ),
                  Image.asset(
                    "assets/icons/Rectangle.png",
                    height: 94,
                    scale: 4,
                  ),
                  Positioned(
                      bottom: 65,
                      right: 3,
                      child: Image.asset(
                        "assets/icons/Ellipse.png",
                        height: 37,
                        scale: 4,
                      ))
                ],
              ),
              SizedBox(height: 40),
              Image.asset(
                "assets/icons/nav.png",
                height: 202,
                scale: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                    "Don’t miss out on important audition notifications like read receipts or adjustment requests from casting.",
                    textAlign: TextAlign.center,
                    style: TextStyles.inter16BlackPearlBold700),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: createColoredButton(context, "OK", MyColor.button, () {
                  // navTo(context, HomeLightEmptyScreen());
                  showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          buildNAVDialogComp(context));
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

createNavHead(String headTitle) {
  return Container(
    padding: EdgeInsets.only(bottom: 24),
    child: Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            headTitle,
            textAlign: TextAlign.center,
            style: TextStyles.inter32NeroBold700,
          ),
        ),
      ],
    ),
  );
}

buildNAVDialogComp(BuildContext context) {
  return AlertDialog(
    title: Text(
      "Are you sure you want to skip?",
      style: GoogleFonts.inter(
        textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
      ),
      textAlign: TextAlign.left,
    ),
    content: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        "We’ll only send you relevant, sometimes time sensitive notifications about your submissions.",
        style: GoogleFonts.inter(
            textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
        textAlign: TextAlign.left,
      ),
    ),
    actions: [
      TextButton(
        child: Text("Skip it", style: TextStyles.causten15BlackMedium600),
        onPressed: () {
          navTo(context, HomeLightEmptyScreen());
        },
      ),
      TextButton(
        child: Text("Turn Notifications ON",
            style: TextStyles.causten15BlackMedium600),
        onPressed: () {
          navTo(context, HomeLightEmptyScreen());
        },
      )
    ],
  );

  // Container(
  //   height: 195,
  //   width: 700,
  //   child: Column(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Column(
  //           children: [
  //             Text(
  //               "Are you sure you want to skip?",
  //               style: GoogleFonts.inter(
  //                   textStyle:
  //                       TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
  //             ),
  //             SizedBox(height: 10),
  //             Padding(
  //               padding: const EdgeInsets.only(left: 12),
  //               child: Text(
  //                 "We’ll only send you relevant, sometimes time sensitive notifications about your submissions.",
  //                 style: GoogleFonts.inter(
  //                     textStyle: TextStyle(
  //                         fontWeight: FontWeight.w600, fontSize: 15)),
  //                 textAlign: TextAlign.left,
  //               ),
  //             ),
  //           ],
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             TextButton(
  //                 onPressed: () {
  //                   navTo(context, HomeLightEmptyScreen());
  //                 },
  //                 child: Text(
  //                   "Skip it",
  //                   style: GoogleFonts.inter(
  //                       textStyle: TextStyle(
  //                           fontWeight: FontWeight.w600,
  //                           fontSize: 15,
  //                           color: Colors.black)),
  //                 )),
  //             TextButton(
  //                 onPressed: () {
  //                   navTo(context, HomeLightEmptyScreen());
  //                 },
  //                 child: Text(
  //                   "Turn Notifications ON",
  //                   style: GoogleFonts.inter(
  //                       textStyle: TextStyle(
  //                           fontWeight: FontWeight.w600,
  //                           fontSize: 15,
  //                           color: Colors.black)),
  //                 ))
  //           ],
  //         )
  //       ]));
}
