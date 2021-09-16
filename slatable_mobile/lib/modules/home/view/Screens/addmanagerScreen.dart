

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/settingsScreen.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';

class AddManagerScreen extends StatelessWidget {
  const AddManagerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
          buildHeadContainer(),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Text(
              "Manager information",
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: HexColor("#898B91"))),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  title: Text("Name"),
                  subtitle: Text("Name"),
                ),
                ListTile(
                  title: Text("Company"),
                  subtitle: Text("Company"),
                ),
                ListTile(
                  title: Text("Email address"),
                  subtitle: Text("Email address"),
                ),
                ListTile(
                  title: Text("Phone number"),
                  subtitle: Text("Phone number"),
                ),
              ],
            ),
          ),
          SizedBox(height: 130),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: createColoredButton(
                context, "Save Links", HexColor("#DEF0D8"), () {}),
          )
        ], MainAxisAlignment.start));
  }

  buildHeadContainer() {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 30, left: 30, bottom: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Add Manager",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(color: Colors.grey)
            ),
            child: IconButton(
                onPressed: () {
                },
                icon: Image.asset("assets/icons/edit.png")),
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
}
