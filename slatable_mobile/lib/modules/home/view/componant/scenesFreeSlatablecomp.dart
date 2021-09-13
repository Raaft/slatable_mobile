import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/takesEmptyScreen.dart';

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
                    Text("Scenes (6)",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700)),
                    TextButton(
                      onPressed: () {},
                      child: Text(" ? ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text("Draft",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
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

Widget buildSencCard() {
  return Column(
    children: [
      Container(
        height: 144,
        width: 144,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(34)),
      ),
      SizedBox(height: 10),
      Text(" Scene 1 ",
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700)),
    ],
  );
}

Widget buildButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(30),
    child: createColoredRowButton(
        context,
        "  Get PRO to create unlimited scenes",Colors.white,
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
        navTo(context, TakesEmptyScreen())
    ),
  );
}
