import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';

class AddLinksForInvitedAuditionProScreen extends StatelessWidget {
  const AddLinksForInvitedAuditionProScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
      buildHeadContainer(),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Use links?",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: ListTile(
          title: Text("Yes/No"),
          trailing: Switch(value: true, onChanged: (val) {}),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "AuditionDROP Links",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text("Reel"),
              subtitle: Text("www.myReel.com"),
            ),
            Divider(),
            ListTile(
              title: Text("Resume"),
              subtitle: Text("www.david.com/resume"),
            ),
            Divider(),
            ListTile(
              title: Text("Website"),
              subtitle: Text("instagram.com"),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
            "Tap to edit links. This will only edit links for this audition. You can permanently change your links in Settings.",style: TextStyle(color: Colors.grey),),
      ),

          createColoredButton(context, "Save Links", HexColor("#DEF0D8"), () {})
    ], MainAxisAlignment.start));
  }

  Container buildHeadContainer() {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 30, left: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Add Links",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
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
