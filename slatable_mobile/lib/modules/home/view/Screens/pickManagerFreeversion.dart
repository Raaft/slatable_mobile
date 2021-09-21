import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/shared/ui/components/custom_container.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class PickManagerFreeVersion extends StatelessWidget {
  const PickManagerFreeVersion({Key? key}) : super(key: key);

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
          child: Padding(
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
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ListTile(
            leading: Radio(
              activeColor: Palette.black,
              value: '',
              groupValue: '',
              onChanged: (value) {},
            ),
            trailing: CustomContainer(
              height: 48,
              width: 48,
              radius: 16,
              hasBorder: true,
              child: InkWell(
                child: Image.asset(
                  AppIcons.edit,
                  scale: 4,
                ),
              ),
            ),
            title: Text(
              "Company",
              style: TextStyles.inter15blackPearlMedium600,
            ),
            subtitle: Text(
              "Wade Warren",
              style: TextStyles.inter15blackPearlRegular500WithOpacity,
            ),
          ),
        ),
      ),
      SizedBox(height: 230),
      Padding(
        padding: const EdgeInsets.all(20),
        child: createColoredRowButton(
            context,
            "  Get PRO to create unlimited scenes",
            Colors.white,
            HexColor("#121419"),
            double.infinity,
            Container(
              height: 17,
              width: 39,
              child: Text(
                "PRO",
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(34)),
            ),
            () {}),
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
