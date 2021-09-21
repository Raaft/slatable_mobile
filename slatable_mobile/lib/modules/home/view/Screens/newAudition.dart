import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/shared/ui/components/custom_container.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class NewAudition extends StatelessWidget {
  const NewAudition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
      buildHeadContainer(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "Audition information".toUpperCase(),
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Audition Title",
                style: TextStyles.inter15blackPearlMedium600,
              ),
            ),
            subtitle: Text("Star Wars Ep. 5",
                style: TextStyles.inter15blackPearlRegular500WithOpacity),
          ),
        ),
      ),
      line(null, null, null, null),
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Character Name",
                style: TextStyles.inter15blackPearlMedium600,
              ),
            ),
            subtitle: Text("ANNA",
                style: TextStyles.inter15blackPearlRegular500WithOpacity),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "Contact information".toUpperCase(),
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
                    title: Text("Manager",
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
              line(null, null, null, null),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  trailing: CupertinoSwitch(
                    activeColor: Palette.deepSkyBlue,
                    value: false,
                    onChanged: (bool value) {},
                  ),
                  title: Text(
                    "Email",
                    style: TextStyles.inter15blackPearlMedium600,
                  ),
                ),
              ),
              line(null, null, null, null),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  trailing: CupertinoSwitch(
                    activeColor: Palette.deepSkyBlue,
                    value: true,
                    onChanged: (bool value) {},
                  ),
                  title: Text(
                    "Phone number",
                    style: TextStyles.inter15blackPearlMedium600,
                  ),
                ),
              ),
            ],
          )),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "PRO Title Card settings",
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 12),
                child: ListTile(
                    title: Text("Headshot",
                        style: TextStyles.inter15blackPearlMedium600),
                    leading: Container(
                      alignment: Alignment.center,
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
                    trailing: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        AppIcons.forwardArrow,
                        scale: 4,
                        color: Palette.madisonBlue,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 12),
                child: ListTile(
                    title: Text("Slate",
                        style: TextStyles.inter15blackPearlMedium600),
                    leading: Container(
                      alignment: Alignment.center,
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
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "Tape preferences",
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 12),
                child: ListTile(
                    title: Text("Title cards",
                        style: TextStyles.inter15blackPearlMedium600),
                    leading: Container(
                      alignment: Alignment.center,
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
                    trailing: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        AppIcons.forwardArrow,
                        scale: 4,
                        color: Palette.madisonBlue,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                    title: Text("Transitions",
                        style: TextStyles.inter15blackPearlMedium600),
                    leading: Container(
                      alignment: Alignment.center,
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
                    trailing: CupertinoSwitch(
                      activeColor: Palette.deepSkyBlue,
                      value: true,
                      onChanged: (bool value) {},
                    )),
              ),
            ],
          )),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "AUDITIONDROP",
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 12),
                child: ListTile(
                    title: Text("Links",
                        style: TextStyles.inter15blackPearlMedium600),
                    leading: Container(
                      alignment: Alignment.center,
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
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: createColoredButton(
            context, "Save Audition", Palette.taraGreen, () {}),
      )
    ], MainAxisAlignment.start));
  }

  Container buildHeadContainer() {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 30, left: 30, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'Edit\n', style: TextStyles.inter32NeroRegular400),
                TextSpan(
                    text: 'Audition', style: TextStyles.inter32NeroMedium600)
              ],
            ),
          ),
          CustomContainer(
              height: 45,
              width: 80,
              radius: 16,
              hasBorder: true,
              child: InkWell(
                onTap: () {},
                child: Center(
                    child: Text('close',
                        style: TextStyles.inter14blackPearlBold700)),
              )),
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
