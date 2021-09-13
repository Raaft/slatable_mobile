import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';

class PickManagerProVersion extends StatelessWidget {
  const PickManagerProVersion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
      buildHeadManager(),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "include Manager?",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                  title: Text("Yes/No"),
                  trailing: Switch(value: true, onChanged: (value) {})),
            ],
          )),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          "Managers",
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
      Container(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                  title: Text("Company"),
                  subtitle: Text("Wade Warren"),
                  leading: Radio(value: [], groupValue: [], onChanged: (v) {}),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))),
              Divider(),
              ListTile(
                  title: Text("Company"),
                  subtitle: Text("Wade Warren"),
                  leading: Radio(value: [], groupValue: [], onChanged: (v) {}),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))),

            ],
          )),
      SizedBox(height: 140),
      Padding(
        padding: const EdgeInsets.all(30),
        child: createColoredButton(
            context,
            "+ Add Agent",
            MyColor.button,
            () {}),
      ),
    ], MainAxisAlignment.start));
  }

  Container buildHeadManager() {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 30, left: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          Text("Manager",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),
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
