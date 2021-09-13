import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/scenesFreeSlatableScreen.dart';

Widget buildHead() {
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
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            Text("Your Auditions",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
        IconButton(
            onPressed: () {}, icon: Image.asset("assets/icons/slider.png"))
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
    child: createColoredButton(
        context, "+ Create audition", MyColor.button, () {
          navTo(context, ScenesFreeSlatableScreen());
    }),
  );
}

Widget buildBody() {
  return Padding(
    padding: const EdgeInsets.all(30),
    child: Column(
      children: [
        Icon(
          Icons.play_arrow,
          color: Colors.grey,
          size: 40,
        ),
        SizedBox(height: 30),
        Text(
            " Hmm... Looks like you don’t have any auditions yet. You can create your first audition below. Break a leg! ",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
      ],
    ),
  );
}
