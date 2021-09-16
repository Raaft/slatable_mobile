import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/addAgentScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/addLinksForInvitedAuditionProoScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/addmanagerScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/headshotgallery.dart';
import 'package:slatable_mobile/modules/home/view/Screens/slatesScreen.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';

class InvitedAuditionAddLinksScreen extends StatelessWidget {
  const InvitedAuditionAddLinksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
      buildHeadContainer(),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Audition information",
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
              title: Text("Audition Title"),
              subtitle: Text("Apple Commercial #33"),
            ),
            Divider(),
            ListTile(
              title: Text("Character Name"),
              subtitle: Text("ANNA"),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Contact information",
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
              title: Text("Agent"),
              trailing: IconButton(
                  onPressed: () {navTo(context, AddAgentScreen());}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              title: Text("Manager"),
              trailing: IconButton(
                  onPressed: () {navTo(context, AddManagerScreen());}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              title: Text("Email"),
              trailing: Switch(value: true, onChanged: (val) {}),
            ),
            ListTile(
              title: Text("Phone number"),
              trailing: Switch(value: true, onChanged: (val) {}),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Requested from Casting",
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
              title: Text("Your headshot"),
              trailing: IconButton(
                  onPressed: () {navTo(context, HeadshotGallery());}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              title: Text("Your slate"),
              trailing: IconButton(
                  onPressed: () {navTo(context, SlatesScreen());}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              title: Text("Lifestyle photos"),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              title: Text("Links"),
              trailing: IconButton(
                  onPressed: () {navTo(context, AddLinksForInvitedAuditionProScreen());}, icon: Icon(Icons.arrow_forward_ios)),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Notes from Casting",
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "We need at least 5 takes for 2 different scenes: Cry, Laugh.\n \nPlease send on time.\n\nThank you.",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
              child: createColoredButton(
                  context, "Download PDF", HexColor("#C8D0E5"), () {}),
            )
          ],
        ),
      ),
    ], MainAxisAlignment.start));
  }

  buildHeadContainer() {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 30, left: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Invited to ",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
          Text(
            "Audition ",
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700),
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
