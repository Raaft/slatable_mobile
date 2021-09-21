import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/settingsScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/takesEmptyScreen.dart';
import 'package:slatable_mobile/shared/ui/components/custom_container.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';

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
                    onTap: () => navBack(context),
                    child: Icon(Icons.keyboard_backspace, color: Colors.black)),
                verticalSpace(15),
                Text(
                  "Star Wars\nEp.5",
                  style: GoogleFonts.inter(
                      textStyle:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w600)),
                ),
                verticalSpace(10),
                Text("BANDO FETT",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Scenes (6)",
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700))),
                    SizedBox(width: 70),
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
                Text("DRAFT", style: TextStyles.inter11MadisonBlueMedium600),
                SizedBox(height: 20),
                CustomContainer(
                    height: 48,
                    width: 48,
                    radius: 16,
                    color: Colors.transparent,
                    hasBorder: true,
                    child: IconButton(
                      onPressed: () {
                        navTo(context, SettingsScreen());
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
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/external_link.png",
                        color: Palette.blackPearl.withOpacity(.5),
                      ),
                    )),
              ],
            ),
          ],
        ),
        verticalSpace(10),
        Divider()
      ],
    ),
    height: 260,
    width: double.infinity,
    decoration: BoxDecoration(
        //  color: Colors.white,
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(34),
      topRight: Radius.circular(34),
    )),
  );
}

buildSencCard(context) {
  return Container(
    width: double.infinity,
    alignment: Alignment.topLeft,
    padding: EdgeInsets.fromLTRB(30, 5, 10, 20),
    child: Column(
      children: [
        GestureDetector(
          onTap: () {
            navTo(context, TakesEmptyScreen());
          },
          child: CustomContainer(
            height: 144,
            width: 144,
            radius: 34,
            color: Palette.white,
            child: Image.asset(
              "assets/icons/Scenes-icon 1.png",
              scale: 4,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(" Scene 1 ", style: TextStyles.inter13blackPearlBold700),
      ],
    ),
  );
}

Widget buildButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(30),
    child: createColoredRowButton(
        context,
        "  Get PRO to create unlimited scenes",
        Colors.white,
        HexColor("#121419"),
        double.infinity,
        Container(
          height: 17,
          width: 39,
          child: Text(
            "PRO",
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(34)),
        ),
        navTo(context, TakesEmptyScreen())),
  );
}
