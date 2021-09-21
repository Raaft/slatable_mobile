import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/audioRecording.dart';
import 'package:slatable_mobile/modules/home/view/Screens/invitedAuditionAddLinksScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/newAudition.dart';
import 'package:slatable_mobile/shared/ui/components/custom_container.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

buildButtons(BuildContext context) {
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
            navTo(context, AudioRecordingScreen());
          }),
          CustomContainer(
            height: 56,
            width: 56,
            radius: 24,
            child: InkWell(
              onTap: () {
                navTo(context, AudioRecordingScreen());
              },
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
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.keyboard_backspace,
                    )),
                verticalSpace(15),
                Text("Star Wars\nEp.5", style: TextStyles.inter32NeroMedium600),
                verticalSpace(15),
                Text("BANDO FETT",
                    style: TextStyles.inter15blackPearlRegular500),
                verticalSpace(10),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Scenes 6 ',
                          style: TextStyles.inter15blackPearlBold700),
                      TextSpan(
                          text: ' > ',
                          style: TextStyles.inter15blackPearlRegular500),
                      TextSpan(
                          text: ' Takes (9)',
                          style: TextStyles.inter15blackPearlRegular500),
                    ],
                  ),
                ),
                verticalSpace(10),
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
                      icon: Image.asset(
                        "assets/icons/edit.png",
                        scale: 4,
                      ),
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
                        scale: 4,
                        color: Palette.blackPearl.withOpacity(.3),
                      ),
                    )),
              ],
            ),
          ],
        ),
        Divider()
      ],
    ),
    height: 250,
    width: double.infinity,
    decoration: BoxDecoration(
        //  color: Colors.white,
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(34),
      topRight: Radius.circular(34),
    )),
  );
}

buildItemCard(index) {
  print(index);
  return Container(
    height: index == 0 ? 200 : 93,
    width: index == 0 ? 200 : 93,
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        Image(
          image: AssetImage("assets/icons/person.jpg"),
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, bottom: 8),
          child: Text(
            "Take1",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        )
      ],
    ),
  );
}
