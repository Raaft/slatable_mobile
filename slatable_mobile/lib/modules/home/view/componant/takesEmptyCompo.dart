import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/takesPopulatedScreen.dart';

Widget buildHeadContainer() {
  return Container(
    padding: EdgeInsets.only(top: 24, right: 30, left: 30, bottom: 16),
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
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                Text(
                  "Star Wars\nEp.5",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                Text("BANDO FETT",
                    style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                Row(
                  children: [
                    Text("Scenes (6) > Takes (0)",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700)),
                    TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.help_outline_outlined,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text("Draft",
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.normal)),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/slider.png")),
                SizedBox(width: 10),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/external_link.png")),
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
              "New take",Colors.black,
              MyColor.button,
              123,
              Icon(
                Icons.add,
                color: HexColor("#8C7D4F"),
              ),
                  () {
                navTo(context, TakesPopulated());
                  }),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Image.asset(
              "assets/icons/microphone.png",
              height: 28,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Image.asset(
              "assets/icons/dawnload.png",
              height: 22,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Image.asset(
              "assets/icons/heart.png",
              height: 28,
            ),
          ),
        ],
      ));
}


