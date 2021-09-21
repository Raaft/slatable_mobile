import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/invitedAuditionAddLinksScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/newAudition.dart';
import 'package:slatable_mobile/modules/home/view/Screens/settingsScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/takesPopulatedScreen.dart';
import 'package:slatable_mobile/shared/ui/components/custom_container.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

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
                InkWell(
                  onTap: () {
                    navBack(context);
                  },
                  child: Icon(Icons.keyboard_backspace, color: Colors.black),
                ),
                verticalSpace(15),
                Text(
                  "Star Wars\nEp.5",
                  style: GoogleFonts.inter(
                      textStyle:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
                ),
                SizedBox(height: 4),
                Text("BANDO FETT",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500))),
                Row(
                  children: [
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Scenes 1 ',
                              style: TextStyles.inter15blackPearlBold700),
                          TextSpan(
                              text: ' > ',
                              style: TextStyles.inter15blackPearlRegular500),
                          TextSpan(
                              text: ' Takes (0)',
                              style: TextStyles.inter15blackPearlRegular500),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.help_outline_outlined,
                        color: Palette.spindleBlue,
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("INVITED", style: TextStyles.inter11MadisonBlueMedium600),
                SizedBox(height: 20),
                CustomContainer(
                    height: 48,
                    width: 48,
                    radius: 16,
                    color: Colors.transparent,
                    hasBorder: true,
                    child: IconButton(
                      onPressed: () {
                        navTo(context, InvitedAuditionAddLinksScreen());
                      },
                      icon: Image.asset("assets/icons/edit.png"),
                    )),
                SizedBox(height: 15),
                CustomContainer(
                    height: 48,
                    width: 48,
                    radius: 16,
                    color: Colors.transparent,
                    hasBorder: true,
                    child: IconButton(
                      onPressed: () {
                        navTo(context, NewAudition());
                      },
                      icon: Image.asset(
                        "assets/icons/external_link.png",
                        color: Palette.blackPearl.withOpacity(.5),
                      ),
                    )),
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          CustomContainer(
            height: 56,
            width: 56,
            radius: 24,
            child: InkWell(
              onTap: () {},
              child: Image.asset("assets/icons/microphone.png",
                  scale: 4, height: 28),
            ),
          ),
          CustomContainer(
            height: 56,
            width: 56,
            radius: 24,
            child: InkWell(
              onTap: () {},
              child: Image.asset("assets/icons/dawnload.png",
                  scale: 4, height: 28),
            ),
          ),
          CustomContainer(
            height: 56,
            width: 56,
            radius: 24,
            child: InkWell(
              onTap: () {},
              child:
                  Image.asset("assets/icons/heart.png", scale: 4, height: 28),
            ),
          )
        ],
      ));
}
