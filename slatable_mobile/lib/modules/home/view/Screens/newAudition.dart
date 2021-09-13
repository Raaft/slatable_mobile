import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';

class NewAudition extends StatelessWidget {
  const NewAudition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
      buildHeadContainer(),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Audition information",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: ListTile(
          title: Text("Audition Title"),
          subtitle: Text("Star Wars Ep. 5"),
        ),
      ),
      Container(
        color: Colors.white,
        child: ListTile(
          title: Text("Character Name"),
          subtitle: Text("ANNA"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Contact information",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                  title: Text("Manager"),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))),
              ListTile(
                trailing: Switch(onChanged: (va) {}, value: false),
                title: Text("Email"),
              ),
              ListTile(
                trailing: Switch(onChanged: (va) {}, value: false),
                title: Text("Phone number"),
              ),
            ],
          )),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "PRO Title Card settings",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                  title: Text("Headshot"),
                  leading: Container(
                    height: 17,
                    width: 39,
                    child: Text(
                      "PRO",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(34)),
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))),
              ListTile(
                  title: Text("Slate"),
                  leading: Container(
                    height: 17,
                    width: 39,
                    child: Text(
                      "PRO",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(34)),
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))),
            ],
          )),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Tape preferences",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                  title: Text("Title cards"),
                  leading: Container(
                    height: 17,
                    width: 39,
                    child: Text(
                      "PRO",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(34)),
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))),
              ListTile(
                  title: Text("Transitions"),
                  leading: Container(
                    height: 17,
                    width: 39,
                    child: Text(
                      "PRO",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(34)),
                  ),
                  trailing: Switch(
                    value: true,
                    onChanged: (bool value) {},
                  )),
            ],
          )),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "AUDITIONDROP",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                  title: Text("Links"),
                  leading: Container(
                    height: 17,
                    width: 39,
                    child: Text(
                      "PRO",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(34)),
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))),
            ],
          )),
      createColoredButton(context, "Save Audition", HexColor("#DEF0D8"), () {})
    ], MainAxisAlignment.start));
  }

  Container buildHeadContainer() {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 30, left: 30, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Edit",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              Text("Audition",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),
            ],
          ),
          Container(
            height: 44,
            width: 80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(22)),
            child: OutlinedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(22),
                  ))),
              onPressed: () {},
              child: Text(
                "Close",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
          )
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
