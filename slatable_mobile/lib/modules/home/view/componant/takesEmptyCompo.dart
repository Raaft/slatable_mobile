import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/invitedAuditionAddLinksScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/newAudition.dart';
import 'package:slatable_mobile/modules/home/view/Screens/settingsScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/takesPopulatedScreen.dart';

buildHeadContainer(context) {
  return Container(
    padding: EdgeInsets.only(top: 22, right: 30, left: 30, bottom: 16),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () => navBack(context),
                    icon: Icon(Icons.keyboard_backspace, color: Colors.black)),
                Text(
                  "Star Wars\nEp.5",
                  style: GoogleFonts.inter(
                      textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
                ),
                Text("BANDO FETT",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500))),
                Row(
                  children: [
                    Text("Scenes (6) >",
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700))),Text("Takes (0)",
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500))),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.help_outline_outlined,color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Draft",
                    style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                SizedBox(height: 15),

                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.grey)
                  ),
                  child: IconButton(
                      onPressed: () {
                        navTo(context, InvitedAuditionAddLinksScreen());
                      },
                      icon: Image.asset("assets/icons/edit.png")),
                ),
                SizedBox(height: 15),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.grey)
                  ),
                  child:       IconButton(
                      onPressed: () {navTo(context, NewAudition());},
                      icon: Image.asset("assets/icons/external_link.png")),

                ),

              ],
            ),
          ],
        ),
        Divider()
      ],
    ),
    height: 240,
    width: double.infinity,
    decoration: BoxDecoration(
      //  color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
          topRight: Radius.circular(34),
        )),
  );
}

Widget buildButtons(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          createColoredRowButton(
              context,
              "New take",
              Colors.black,
              MyColor.button,
              123,
              Icon(
                Icons.add,
                color: HexColor("#8C7D4F"),
              ), () {
            navTo(context, TakesPopulated());
          }),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Image.asset(
              "assets/icons/microphone.png",scale: 4,
              height: 28,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Image.asset(
              "assets/icons/dawnload.png",scale: 4,
              height: 22,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Image.asset(
              "assets/icons/heart.png",scale: 4,
              height: 28,
            ),
          ),
        ],
      ));
}
