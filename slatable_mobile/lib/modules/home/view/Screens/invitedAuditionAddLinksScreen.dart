import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/home/view/Screens/addAgentScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/addLinksForInvitedAuditionProoScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/addmanagerScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/headshotgallery.dart';
import 'package:slatable_mobile/modules/home/view/Screens/slatesScreen.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/shared/ui/components/custom_container.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class InvitedAuditionAddLinksScreen extends StatelessWidget {
  const InvitedAuditionAddLinksScreen({Key? key}) : super(key: key);

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
                  title: Text("Agent",
                      style: TextStyles.inter15blackPearlMedium600),
                  trailing: InkWell(
                    onTap: () {
                      navTo(context, AddAgentScreen());
                    },
                    child: Image.asset(
                      AppIcons.forwardArrow,
                      scale: 4,
                      color: Palette.madisonBlue,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ListTile(
                  title: Text("Manager",
                      style: TextStyles.inter15blackPearlMedium600),
                  trailing: InkWell(
                    onTap: () {
                      navTo(context, AddManagerScreen());
                    },
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
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "Requested from Casting".toUpperCase(),
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
                  title: Text("Your Headshot",
                      style: TextStyles.inter15blackPearlMedium600),
                  trailing: InkWell(
                    onTap: () {
                      navTo(context, HeadshotGallery());
                    },
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
                  title: Text("Your Slate",
                      style: TextStyles.inter15blackPearlMedium600),
                  trailing: InkWell(
                    onTap: () {
                      navTo(context, SlatesScreen());
                    },
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
                  title: Text("Lifestyle photos",
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
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 12),
              child: ListTile(
                  title: Text("Links",
                      style: TextStyles.inter15blackPearlMedium600),
                  trailing: InkWell(
                    onTap: () {
                      navTo(context, AddLinksForInvitedAuditionProScreen());
                    },
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
          "Notes from Casting".toUpperCase(),
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text(
                "We need at least 5 takes for 2 different\nscenes: Cry, Laugh.\n \nPlease send on time.\n\nThank you.",
                style: TextStyles.inter15blackPearlRegular500WithOpacity,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
      padding: EdgeInsets.only(top: 50, right: 30, left: 30, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'Invited to \n',
                    style: TextStyles.inter32NeroMedium600),
                TextSpan(text: 'Audition', style: TextStyles.inter32NeroBold700)
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
      height: 180,
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
