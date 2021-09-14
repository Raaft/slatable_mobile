import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
      buildHeadContainer(),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Your information",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text("My Information"),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              title: Text("Agents"),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              title: Text("Managers"),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Purchases",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text("SlatablePRO subscription"),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              title: Text("Restore purchases"),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "LEARN",
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
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Company",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text("Support"),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            ListTile(
              title: Text("Legal"),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Information",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text("Available space"),
              trailing: Text("60GB"),
            ),
            ListTile(
              title: Text("Version"),
              trailing: Text("0.1"),
            ),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_backspace)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Audition ",
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700),
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.help_outline_outlined)),
            ],
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
