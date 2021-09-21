import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
      buildHeadContainer(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "Your information".toUpperCase(),
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  title: Text("My Information",
                      style: TextStyles.inter15blackPearlMedium600),
                  trailing: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      AppIcons.forwardArrow,
                      scale: 4,
                      color: Palette.madisonBlue,
                    ),
                  )),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  title: Text("Agents",
                      style: TextStyles.inter15blackPearlMedium600),
                  trailing: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      AppIcons.forwardArrow,
                      scale: 4,
                      color: Palette.madisonBlue,
                    ),
                  )),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: ListTile(
                  title: Text("Managers",
                      style: TextStyles.inter15blackPearlMedium600),
                  trailing: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      AppIcons.forwardArrow,
                      scale: 4,
                      color: Palette.madisonBlue,
                    ),
                  )),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "Purchases".toUpperCase(),
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: ListTile(
                  title: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      style: TextStyles.inter15blackPearlMedium600,
                      children: <TextSpan>[
                        TextSpan(text: 'Slatable'),
                        TextSpan(
                            text: 'PRO ',
                            style: TextStyles.inter15electricPurpleRegular600),
                        TextSpan(text: 'subscription'),
                      ],
                    ),
                  ),
                  trailing: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      AppIcons.forwardArrow,
                      scale: 4,
                      color: Palette.madisonBlue,
                    ),
                  )),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: ListTile(
                  title: Text("Restore purchases",
                      style: TextStyles.inter15blackPearlMedium600)),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "LEARN".toUpperCase(),
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: ListTile(
              title: Text("How-to videos",
                  style: TextStyles.inter15blackPearlMedium600)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "Company".toUpperCase(),
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  title: Text("Support",
                      style: TextStyles.inter15blackPearlMedium600),
                  trailing: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      AppIcons.forwardArrow,
                      scale: 4,
                      color: Palette.madisonBlue,
                    ),
                  )),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  title: Text("Legal",
                      style: TextStyles.inter15blackPearlMedium600),
                  trailing: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      AppIcons.forwardArrow,
                      scale: 4,
                      color: Palette.madisonBlue,
                    ),
                  )),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "Information".toUpperCase(),
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                title: Text("Available space",
                    style: TextStyles.inter15blackPearlMedium600),
                trailing:
                    Text("60GB", style: TextStyles.inter15blackPearlMedium600),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                title: Text("Version",
                    style: TextStyles.inter15blackPearlMedium600),
                trailing:
                    Text("-", style: TextStyles.inter15blackPearlMedium600),
              ),
            ),
          ],
        ),
      ),
    ], MainAxisAlignment.start));
  }

  buildHeadContainer() {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 30, left: 20, bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(onTap: () {}, child: Icon(Icons.keyboard_backspace)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Settings",
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700),
              ),
              InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.help_outline_outlined,
                    color: Palette.darkGrey,
                  )),
            ],
          ),
        ],
      ),
      height: 150,
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
