import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/scenesFreeSlatableScreen.dart';
import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/modules/home/view/componant/homeLightEmptycomp.dart';

class HomeLightPopulatedScreen extends StatelessWidget {
  const HomeLightPopulatedScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    GlobalKey globalKey1=GlobalKey();
    GlobalKey globalKey2=GlobalKey();
    GlobalKey globalKey3=GlobalKey();
    return Scaffold(
      body: createBodyHome(HexColor("#F3F6FC"),[
        buildHead(context),
        SizedBox(height: 24),
        buildIconsContainer([
          Text(
            "Star Wars Ep.5",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            "BANDO FETT",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ], IconButton(onPressed: () {}, icon: Icon(Icons.mail_outline)),globalKey1,context),
        SizedBox(height: 8),
        buildIconsContainer(
          [
            Text(
              "Apple Commercial #33",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 24),
            Text(
              "CUSTOMER",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ],
          Text(
            "DRAFT",
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          ),globalKey2,context
        ),
        SizedBox(height: 8),
        buildIconsContainer(
            [
              Text(
                "Apple Commercial #33",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              )
            ],
            IconButton(
                onPressed: () {}, icon: Icon(Icons.mark_email_unread_rounded)),globalKey3,context),
        SizedBox(height: 110),
        Padding(
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
            navTo(context, ScenesFreeSlatableScreen());
          }),
        )
      ], MainAxisAlignment.start),
    );
  }
}
