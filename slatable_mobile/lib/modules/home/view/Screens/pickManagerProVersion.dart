import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class PickManagerProVersion extends StatelessWidget {
  const PickManagerProVersion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
      buildHeadManager(context),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "include Manager?".toUpperCase(),
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  trailing: CupertinoSwitch(
                    activeColor: Palette.deepSkyBlue,
                    value: false,
                    onChanged: (bool value) {},
                  ),
                  title: Text(
                    "Yes/No",
                    style: TextStyles.inter15blackPearlMedium600,
                  ),
                ),
              ),
            ],
          )),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "Managers".toUpperCase(),
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
                    title: Text("Company"),
                    subtitle: Text("Wade Warren"),
                    leading: Radio(
                      activeColor: Palette.black,
                      value: '',
                      groupValue: '',
                      onChanged: (value) {},
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
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: ListTile(
                    title: Text("Company"),
                    subtitle: Text("Wade Warren"),
                    leading: Radio(
                      activeColor: Palette.black,
                      value: '',
                      groupValue: '',
                      onChanged: (value) {},
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
            ],
          )),
      SizedBox(height: 140),
      Padding(
        padding: const EdgeInsets.all(30),
        child:
            createColoredButton(context, "+ Add Agent", MyColor.button, () {}),
      ),
    ], MainAxisAlignment.start));
  }

  Container buildHeadManager(context) {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 30, left: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () => navBack(context),
              child: Icon(Icons.keyboard_backspace, color: Colors.black)),
          Text("Manager",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),
        ],
      ),
      height: 190,
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
