import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/homeLightPopulatedScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/scenesFreeSlatableScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/settingsScreen.dart';

Widget buildHead(context) {
  return Container(
    padding: EdgeInsets.only(top: 72, right: 30, left: 30, bottom: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Welcome, \n David",
              style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w600))
            ),
            Text("Your Auditions",
                style: GoogleFonts.inter(textStyle:  TextStyle(fontSize: 15, fontWeight: FontWeight.w500))),

          ],
        ),
        IconButton(
            onPressed: () {
              navTo(context, SettingsScreen());
            },
            icon: Image.asset("assets/icons/slider.png"))
      ],
    ),
    height: 205,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
          topRight: Radius.circular(34),
        )),
  );
}

Widget buildButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(30),
    child: createColoredRowButton(
        context,
        "Create audition",
        HexColor("#483F23"),
        MyColor.button,
        double.infinity,
        Icon(
          Icons.add,
          color: HexColor("#8C7D4F"),
        ), () {
      navTo(context, HomeLightPopulatedScreen());
    }),
  );
}

Widget buildBody() {
  return Padding(
    padding: const EdgeInsets.all(30),
    child: Column(
      children: [
        Image.asset(
          "assets/icons/Lineplay icon.png",
          scale: 4,
        ),
        SizedBox(height: 30),
        Text(
            " Hmm... Looks like you don’t have any auditions yet. You can create your first audition below. Break a leg! ",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                textStyle: TextStyle(
                    fontSize: 16,
                    color: HexColor("#60646D"),
                    fontWeight: FontWeight.w400))),
      ],
    ),
  );
}
