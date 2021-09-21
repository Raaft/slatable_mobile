import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/modules/home/view/componant/homeCompnant.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class AddLinksForInvitedAuditionProScreen extends StatelessWidget {
  const AddLinksForInvitedAuditionProScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBodySetting([
      buildHeadContainer(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "Use links?".toUpperCase(),
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
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
        child: Text(
          "AuditionDROP Links".toUpperCase(),
          style: TextStyles.inter11aluminumGreyMedium600,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Reel",
                      style: TextStyles.inter15blackPearlMedium600,
                    ),
                  ),
                  subtitle: Text("www.myReel.com",
                      style: TextStyles.inter15blackPearlRegular500WithOpacity),
                ),
              ),
            ),
            Divider(),
            Container(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Resume",
                      style: TextStyles.inter15blackPearlMedium600,
                    ),
                  ),
                  subtitle: Text("www.david.com/resume",
                      style: TextStyles.inter15blackPearlRegular500WithOpacity),
                ),
              ),
            ),
            Divider(),
            Container(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Website",
                      style: TextStyles.inter15blackPearlMedium600,
                    ),
                  ),
                  subtitle: Text("instagram.com",
                      style: TextStyles.inter15blackPearlRegular500WithOpacity),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text:
                    'Tap to edit links. This will only edit links for this audition. You can permanently change your links\nin ',
                style: TextStyles.inter13blackPearlMedium500WithOpacity,
              ),
              TextSpan(
                text: 'Settings.',
                style: TextStyles.inter13denimBlueMedium500,
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: createColoredButton(
            context, "Save Links", Palette.taraGreen, () {}),
      )
    ], MainAxisAlignment.start));
  }

  Container buildHeadContainer() {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 30, left: 30, bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(onTap: () {}, child: Icon(Icons.keyboard_backspace)),
          Text(
            "Your Links",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
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
