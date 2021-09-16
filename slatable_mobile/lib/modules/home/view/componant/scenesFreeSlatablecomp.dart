import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/settingsScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/takesEmptyScreen.dart';

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
                    Text("Scenes (6)",
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700))),
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
                        navTo(context, SettingsScreen());
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
                  child:          IconButton(
                      onPressed: () {},
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

 buildSencCard(context) {
  return Container(
    width: double.infinity,
    alignment: Alignment.topLeft,
    padding: EdgeInsets.all(30),
    child: Column(
      children: [
        GestureDetector(
          onTap: (){navTo(context, TakesEmptyScreen());},
          child: Container(
            child: Image.asset("assets/icons/Scenes-icon 1.png",scale: 4,),
            height: 144,
            width: 144,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(34)),
          ),
        ),
        SizedBox(height: 10),
        Text(" Scene 1 ",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700)),
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

