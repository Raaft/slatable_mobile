import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';

class MyInfoScreen extends StatelessWidget {
  const MyInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
      buildHeadContainer(),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "DEFAULT HEADSHOT",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        height: 200,
        color: HexColor("#F3F6FC"),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 60,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 70,
              ),
              backgroundColor: Colors.grey,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.grey)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.image,
                      color: HexColor("#121419"),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.grey)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.grey,
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "YOUR information",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text("Stage name"),
              trailing: Text("Enter Name"),
            ),
            ListTile(
              title: Text("Email address"),
              trailing: Text("Enter Email"),
            ),
            ListTile(
              title: Text("Phone number"),
              trailing: Text("Enter contact number"),
            ),
            ListTile(
              title: Text("Union Affiliation"),
              trailing: Text("Enter union"),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "PRO Title cards",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text("How-to videos"),
              leading: buildPro(),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              title: Text("My slates"),
              leading: buildPro(),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
          ],
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
              leading: buildPro(),
              subtitle: Text("Enter reel link"),
            ),
            ListTile(
              title: Text("Resume"),
              leading: buildPro(),
              subtitle: Text("Enter resume link"),
            ),
            ListTile(
              title: Text("Website"),
              leading: buildPro(),
              subtitle: Text("Enter website link"),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "ACCOUNT",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text("Allow Notifications"),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              title: Text("Delete my account"),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
          ],
        ),
      ),
    ], MainAxisAlignment.start));
  }

  Container buildPro() {
    return Container(
      alignment: Alignment.center,
      height: 17,
      width: 39,
      child: Text(
        "PRO",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 11, color: Colors.white),
      ),
      decoration: BoxDecoration(
          color: Colors.deepPurple, borderRadius: BorderRadius.circular(34)),
    );
  }

  buildHeadContainer() {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 30, left: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_backspace)),
          Text(
            "My Information",
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
