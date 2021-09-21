import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/homeLightPopulatedScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/settingsScreen.dart';
import 'package:slatable_mobile/shared/ui/components/custom_container.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';

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
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Welcome,',
                    style: TextStyle(
                        color: Palette.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                  ),
                  TextSpan(text: '\n'),
                  TextSpan(
                    text: 'David',
                    style: TextStyle(
                        color: Palette.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Your ',
                    style: TextStyle(
                        color: Palette.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: 'Auditions',
                    style: TextStyle(
                        color: Palette.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
        CustomContainer(
          width: 48,
          height: 48,
          hasBorder: true,
          radius: 16,
          child: IconButton(
              onPressed: () {
                navTo(context, SettingsScreen());
              },
              icon: Image.asset(
                "assets/icons/slider.png",
                scale: 4,
              )),
        ),
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
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text:
                    'Hmm... Looks like you don’t have any auditions yet. You can create your first audition ',
                style: TextStyle(
                    color: Palette.shuttleGrey.withOpacity(.9),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: 'below.',
                style: TextStyle(
                    color: Palette.shuttleGrey.withOpacity(.9),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text: ' Break a leg!',
                style: TextStyle(
                    color: Palette.shuttleGrey.withOpacity(.9),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
